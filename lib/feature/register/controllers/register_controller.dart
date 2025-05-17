import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/routes/app_pages.dart';
import '../../../core/services/auth_service.dart';

class RegisterController extends GetxController {
  final AuthService authService = Get.find<AuthService>();

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  final obscurePassword = true.obs;
  final obscureConfirmPassword = true.obs;
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() =>
      obscurePassword.value = !obscurePassword.value;

  void toggleConfirmPasswordVisibility() =>
      obscureConfirmPassword.value = !obscureConfirmPassword.value;

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    } else if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  Future<void> register() async {
    if (formKey.currentState!.validate()) {
      final name = nameController.text.trim();
      final email = emailController.text.trim();
      final password = passwordController.text;

      final success = await authService.registerWithEmailAndPassword(
        email,
        password,
        name: name.isNotEmpty ? name : null, // Only pass name if it's not empty
      );

      if (success) {
        // Check if there was a partial success (authentication worked but Firestore failed)
        if (authService.errorMessage.value.isNotEmpty) {
          Get.snackbar(
            'Account Created',
            'You have been registered but there was an issue with your profile: ${authService.errorMessage.value}',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.amber,
            colorText: Colors.black,
            duration: const Duration(seconds: 5),
          );
        }
        // Navigate to home screen regardless, since authentication worked
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.snackbar(
          'Registration Failed',
          authService.errorMessage.value,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }

  // Navigation to login screen
  void goToLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }
}
