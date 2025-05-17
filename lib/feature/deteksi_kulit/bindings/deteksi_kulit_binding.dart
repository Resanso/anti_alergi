import 'package:get/get.dart';

import '../controllers/deteksi_kulit_controller.dart';

class DeteksiKulitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeteksiKulitController>(
      () => DeteksiKulitController(),
    );
  }
}
