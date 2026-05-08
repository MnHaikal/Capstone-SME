import 'package:get/get.dart';

// 🔹 SPLASH
import '../modules/splash/views/splash_view.dart';
import '../modules/splash/controllers/splash_controller.dart';

// 🔹 LOGIN
import '../modules/login/views/login_view.dart';
import '../modules/login/bindings/login_binding.dart';

// 🔹 REGISTER
import '../modules/register/views/register_view.dart';
import '../modules/register/controllers/register_controller.dart';

// 🔹 HOME
import '../modules/home/views/home_view.dart';

class AppPages {
  static const INITIAL = '/splash';

  static final routes = [

    /// 🔥 SPLASH
    GetPage(
      name: '/splash',
      page: () => const SplashView(),
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),

    /// 🔥 LOGIN
    GetPage(
      name: '/login',
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),

    /// 🔥 REGISTER
    GetPage(
      name: '/register',
      page: () => const RegisterView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => RegisterController());
      }),
    ),

    /// 🔥 HOME
    GetPage(
      name: '/home',
      page: () => const HomeView(),
    ),
  ];
}