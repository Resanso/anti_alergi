import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_deteksi_controller.dart';

class RiwayatDeteksiView extends GetView<RiwayatDeteksiController> {
  const RiwayatDeteksiView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiwayatDeteksiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RiwayatDeteksiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
