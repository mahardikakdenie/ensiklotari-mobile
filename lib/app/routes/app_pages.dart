import 'package:ensiklotari/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:ensiklotari/app/modules/dashboard/views/dashboard_view.dart';
import 'package:ensiklotari/app/modules/promo/bindings/promo_binding.dart';
import 'package:ensiklotari/app/modules/promo/views/promo_view.dart';
import 'package:ensiklotari/app/modules/transaction/bindings/transaction_binding.dart';
import 'package:ensiklotari/app/modules/transaction/views/transaction_view.dart';
import 'package:get/get.dart';

import 'package:ensiklotari/app/modules/home/bindings/home_binding.dart';
import 'package:ensiklotari/app/modules/home/views/home_view.dart';

import 'package:ensiklotari/app/modules/login/bindings/login_binding.dart';
import 'package:ensiklotari/app/modules/login/views/login_view.dart';

import 'package:ensiklotari/app/modules/profile/bindings/profile_binding.dart';
import 'package:ensiklotari/app/modules/profile/views/profile_view.dart';
import 'package:ensiklotari/app/modules/register/bindings/register_binding.dart';
import 'package:ensiklotari/app/modules/register/views/register_view.dart';
import 'package:ensiklotari/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:ensiklotari/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROMO,
      page: () => PromoView(),
      binding: PromoBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION,
      page: () => TransactionView(),
      binding: TransactionBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
