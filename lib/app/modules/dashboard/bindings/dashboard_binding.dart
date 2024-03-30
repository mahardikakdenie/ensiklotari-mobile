import 'package:ensiklotari/app/modules/home/controllers/home_controller.dart';
import 'package:ensiklotari/app/modules/profile/controllers/profile_controller.dart';
import 'package:ensiklotari/app/modules/promo/controllers/promo_controller.dart';
import 'package:ensiklotari/app/modules/transaction/controllers/transaction_controller.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<PromoController>(
      () => PromoController(),
    );
    Get.lazyPut<TransactionController>(
      () => TransactionController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
