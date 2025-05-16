import 'package:get/get.dart';

import '../controllers/riwayat_deteksi_controller.dart';

class RiwayatDeteksiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiwayatDeteksiController>(
      () => RiwayatDeteksiController(),
    );
  }
}
