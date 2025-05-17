import 'package:get/get.dart';

import '../modules/deteksi_kulit/bindings/deteksi_kulit_binding.dart';
import '../modules/deteksi_kulit/views/deteksi_kulit_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/riwayat_deteksi/bindings/riwayat_deteksi_binding.dart';
import '../modules/riwayat_deteksi/views/riwayat_deteksi_view.dart';
import '../widgets/design_system_showcase.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DESIGN_SYSTEM,
      page: () => const DesignSystemShowcase(),
    ),
    GetPage(
      name: _Paths.DETEKSI_KULIT,
      page: () => const DeteksiKulitView(),
      binding: DeteksiKulitBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT_DETEKSI,
      page: () => const RiwayatDeteksiView(),
      binding: RiwayatDeteksiBinding(),
    ),
  ];
}
