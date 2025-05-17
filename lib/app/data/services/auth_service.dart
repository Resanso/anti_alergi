import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:antialergi/app/routes/app_pages.dart';
import 'package:antialergi/app/data/services/database_service.dart';
import 'package:antialergi/app/data/models/user_model.dart';
import 'package:antialergi/app/utils/logger.dart';

class AuthService extends GetxService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseService _databaseService = DatabaseService();

  Rxn<User> user = Rxn<User>();
  Rxn<UserModel> userModel = Rxn<UserModel>();
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    user.bindStream(_auth.authStateChanges());

    // Listen for auth changes and fetch user data from Firestore
    ever(user, _setInitialScreen);
  }

  // Handle auth state changes
  void _setInitialScreen(User? user) async {
    if (user != null) {
      try {
        // Fetch user data from Firestore
        userModel.value = await _databaseService.getUserData(user.uid);

        // If we couldn't get user data from Firestore but we have an authenticated user,
        // create a basic user model to allow navigation to proceed
        if (userModel.value == null) {
          userModel.value = UserModel(
            uid: user.uid,
            email: user.email ?? '',
            name: user.displayName,
            photoUrl: user.photoURL,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          );
        }
      } catch (e) {
        Logger.error('Error in _setInitialScreen', e);
        // Create a basic user model even if there's an error
        userModel.value = UserModel(
          uid: user.uid,
          email: user.email ?? '',
          name: user.displayName,
          photoUrl: user.photoURL,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
      }
    } else {
      userModel.value = null;
    }
  }

  // Check if user is logged in
  bool get isLoggedIn => _auth.currentUser != null;
  // Register with email and password
  Future<bool> registerWithEmailAndPassword(
    String email,
    String password, {
    String? name,
  }) async {
    try {
      isLoading(true);
      errorMessage('');

      // Create user in Firebase Auth
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // If successful, create user document in Firestore
      if (userCredential.user != null) {
        try {
          final now = DateTime.now();
          final user = UserModel(
            uid: userCredential.user!.uid,
            email: email,
            name: name,
            photoUrl: null,
            createdAt: now,
            updatedAt: now,
          );

          // Save user data to Firestore
          await _databaseService.createUserDocument(
            user,
          ); // Update local user model
          userModel.value = user;
        } catch (firestoreError) {
          Logger.error('Error creating Firestore document', firestoreError);
          // Even if Firestore fails, we should consider the registration successful
          // since the Auth account was created successfully

          // Set a user model with the available data
          userModel.value = UserModel(
            uid: userCredential.user!.uid,
            email: email,
            name: name,
            photoUrl: null,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          );

          // Optional: Set an error message to inform the user about partial success
          errorMessage(
            'Account created but profile setup failed. Please try again later.',
          );
        }
      }

      return true;
    } on FirebaseAuthException catch (e) {
      String message;

      switch (e.code) {
        case 'weak-password':
          message = 'The password provided is too weak.';
          break;
        case 'email-already-in-use':
          message = 'The account already exists for that email.';
          break;
        case 'invalid-email':
          message = 'The email address is not valid.';
          break;
        default:
          message = 'An error occurred. Please try again.';
      }

      errorMessage(message);
      return false;
    } catch (e) {
      errorMessage('Error registering user: $e');
      return false;
    } finally {
      isLoading(false);
    }
  }

  // Sign in with email and password
  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      isLoading(true);
      errorMessage('');

      await _auth.signInWithEmailAndPassword(email: email, password: password);

      return true;
    } on FirebaseAuthException catch (e) {
      String message;

      switch (e.code) {
        case 'user-not-found':
          message = 'No user found for that email.';
          break;
        case 'wrong-password':
          message = 'Wrong password provided.';
          break;
        case 'invalid-email':
          message = 'The email address is not valid.';
          break;
        case 'user-disabled':
          message = 'This user has been disabled.';
          break;
        default:
          message = 'An error occurred. Please try again.';
      }

      errorMessage(message);
      return false;
    } finally {
      isLoading(false);
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
