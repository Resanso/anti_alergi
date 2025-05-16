import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacing.dart';
import '../../../theme/app_typography.dart';
import '../../../utils/app_assets.dart';
import '../../../widgets/home/home_widgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User greeting section
              Obx(() => UserGreetingCardWidget(
                userName: controller.userName.value,
                userRole: controller.userRole.value,
              )),
              
              const SizedBox(height: AppSpacing.lg),
              
              // Our services section
              const SectionTitleWidget(title: 'Layanan Kami'),
              
              const SizedBox(height: AppSpacing.md),
              
              // Services row
              _buildServicesRow(),
              
              const SizedBox(height: AppSpacing.lg),
              
              // Verification history section
              const SectionTitleWidget(title: 'Ajuan Verifikasi'),
              
              const SizedBox(height: AppSpacing.md),
              
              // Column headers
              const VerificationTableHeadersWidget(),
              
              // Verification items
              ...controller.verificationData.mapIndexed(
                (index, data) => VerificationItemWidget(
                  data: data, 
                  index: index,
                ),
              ),
              
              const SizedBox(height: AppSpacing.lg),
              
              // News section
              const SectionTitleWidget(title: 'Berita'),
              
              const SizedBox(height: AppSpacing.md),
              
              // News card
              Obx(() => NewsCardWidget(
                title: controller.newsTitle.value,
                description: controller.newsDescription.value,
              )),
              
              const SizedBox(height: AppSpacing.lg),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          const AppLogoWidget(),
          const SizedBox(width: AppSpacing.xs),
          Text(
            'AntiAlergi',
            style: AppTypography.title3Bold(color: AppColors.blue700),
          ),
        ],
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
    );
  }
  
  Widget _buildServicesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ServiceItemWidget(
          svgAsset: AppAssets.skinDetectionSvg,
          title: 'Deteksi Kulit',
          onTap: () => Get.toNamed(Routes.DETEKSI_KULIT),
        ),
        ServiceItemWidget(
          svgAsset: AppAssets.historySvg,
          title: 'Riwayat Deteksi',
          onTap: () => Get.toNamed(Routes.RIWAYAT_DETEKSI),
        ),
        ServiceItemWidget(
          svgAsset: AppAssets.treatmentSvg,
          title: 'Riwayat Pengobatan',
          onTap: () {
            // This page doesn't exist yet
            Get.snackbar(
              'Info',
              'Fitur ini akan segera tersedia',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: AppColors.blue50,
              colorText: AppColors.blue900,
            );
          },
        ),
      ],
    );
  }
}

// Extension to add mapIndexed functionality to lists
extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int i, E e) f) {
    var i = 0;
    return map((e) => f(i++, e));
  }
}
