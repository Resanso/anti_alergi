import 'package:get/get.dart';
import '../../../data/services/auth_service.dart';

class HomeController extends GetxController {
  // Dependencies
  final AuthService _authService = Get.find<AuthService>();

  // User information
  final userName = ''.obs;
  final userRole = 'Pengguna'.obs;

  @override
  void onInit() {
    super.onInit();

    // Set user name from auth service
    updateUserName();

    // Listen for changes in auth user model
    ever(_authService.userModel, (_) => updateUserName());
  }

  void updateUserName() {
    final user = _authService.userModel.value;
    if (user != null && user.name != null && user.name!.isNotEmpty) {
      userName.value = user.name!;
    } else {
      userName.value = 'User';
    }
  }

  // Verification data
  final verificationData =
      <Map<String, dynamic>>[
        {
          'date': '05/04/2024',
          'percentage': '97.02%',
          'diagnosis': 'Melanoma',
          'status': 'Unverified',
        },
        {
          'date': '05/04/2024',
          'percentage': '97.02%',
          'diagnosis': 'Melanoma',
          'status': 'Sudah Verified',
        },
        {
          'date': '05/04/2024',
          'percentage': '97.02%',
          'diagnosis': 'Melanoma',
          'status': 'Unverified',
        },
      ].obs;

  // News article
  final newsTitle = 'Apa itu Melanoma?'.obs;
  final newsDescription =
      'Melanosit berubah menjadi sel kanker, Melanoma dapat terjadi di kulit maupun pada melanosit yang berada di bagian lain...'
          .obs;
}
