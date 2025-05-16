import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Collection references
  final CollectionReference usersCollection = FirebaseFirestore.instance
      .collection('users');

  // Create a new user document in Firestore
  Future<void> createUserDocument(UserModel user) async {
    try {
      await usersCollection.doc(user.uid).set(user.toJson());
    } catch (e) {
      print('Error creating user document: $e');
      // Check if the error is related to database not existing
      if (e.toString().contains('NOT_FOUND') ||
          e.toString().contains('database (default) does not exist')) {
        print(
          'Firestore database does not exist. Please create it in the Firebase Console.',
        );
      }
      rethrow;
    }
  }

  // Get user data from Firestore
  Future<UserModel?> getUserData(String uid) async {
    try {
      DocumentSnapshot doc = await usersCollection.doc(uid).get();
      if (doc.exists) {
        return UserModel.fromFirestore(doc);
      }
      return null;
    } catch (e) {
      print('Error getting user data: $e');
      // Check if the error is related to database not existing
      if (e.toString().contains('NOT_FOUND') ||
          e.toString().contains('database (default) does not exist')) {
        print(
          'Firestore database does not exist. Please create it in the Firebase Console.',
        );
      }
      return null;
    }
  }

  // Update user data in Firestore
  Future<void> updateUserData(UserModel user) async {
    try {
      await usersCollection.doc(user.uid).update({
        'name': user.name,
        'photoUrl': user.photoUrl,
        'updatedAt': DateTime.now(),
      });
    } catch (e) {
      print('Error updating user data: $e');
      // Check if the error is related to database not existing
      if (e.toString().contains('NOT_FOUND') ||
          e.toString().contains('database (default) does not exist')) {
        print(
          'Firestore database does not exist. Please create it in the Firebase Console.',
        );
      }
      rethrow;
    }
  }

  // Stream of a specific user document
  Stream<UserModel?> userStream(String uid) {
    try {
      return usersCollection
          .doc(uid)
          .snapshots()
          .map((doc) => doc.exists ? UserModel.fromFirestore(doc) : null)
          .handleError((error) {
            print('Error in user stream: $error');
            // Return null when there's an error
            return null;
          });
    } catch (e) {
      print('Error setting up user stream: $e');
      // Return an empty stream in case of setup error
      return Stream.value(null);
    }
  }
}
