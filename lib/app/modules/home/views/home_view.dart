import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/services/auth_service.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    // Get the auth service
    final authService = Get.find<AuthService>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => authService.signOut(),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Anti Alergi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Obx(() {
              final user = authService.user.value;
              final userModel = authService.userModel.value;
              return Column(
                children: [
                  Text(
                    user != null
                        ? 'Logged in as: ${user.email}'
                        : 'Not logged in',
                    style: const TextStyle(fontSize: 16),
                  ),
                  if (userModel?.name != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      'Name: ${userModel!.name}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
