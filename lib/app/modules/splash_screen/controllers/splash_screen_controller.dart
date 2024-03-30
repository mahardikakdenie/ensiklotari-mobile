import 'dart:async';

import 'package:ensiklotari/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    loading();
  }

  Future<void> loading() async {
    Timer(Duration(seconds: 5), () {
      Get.offAndToNamed(Routes.LOGIN);
    });
  }
}
