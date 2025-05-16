import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/deteksi_kulit_controller.dart';

class DeteksiKulitView extends GetView<DeteksiKulitController> {
  const DeteksiKulitView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeteksiKulitView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeteksiKulitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
