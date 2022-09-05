import 'package:get/get.dart';

import 'package:myshop/app/modules/home/bindings/home_binding.dart';
import 'package:myshop/app/modules/home/views/home_view.dart';
import 'package:myshop/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:myshop/app/modules/login_screen/views/login_screen_view.dart';
import 'package:myshop/app/modules/product_screen/bindings/product_screen_binding.dart';
import 'package:myshop/app/modules/product_screen/views/product_screen_view.dart';
import 'package:myshop/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:myshop/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_SCREEN,
      page: () => ProductScreenView(),
      binding: ProductScreenBinding(),
    ),
  ];
}
