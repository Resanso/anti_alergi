import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:antialergi/app/data/services/auth_service.dart';
import 'package:antialergi/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  final obscureText = true.obs;
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() => obscureText.value = !obscureText.value;

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

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      final email = emailController.text.trim();
      final password = passwordController.text;

      final success = await _authService.signInWithEmailAndPassword(
        email,
        password,
      );

      if (success) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.snackbar(
          'Login Failed',
          _authService.errorMessage.value,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }

  void goToRegister() {
    Get.toNamed(Routes.REGISTER);
  }
}
