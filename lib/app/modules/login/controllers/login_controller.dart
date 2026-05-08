import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:smart_sme_app/app/data/providers/auth_provider.dart';

class LoginController extends GetxController {
  final box = GetStorage();

  // 🔥 ambil auth service (biometric)
  final AuthService authService = Get.find<AuthService>();

  // 🔥 state
  var email = ''.obs;
  var password = ''.obs;

  var isLoading = false.obs;
  var isPasswordVisible = false.obs;

  /// 🔥 toggle password visibility
  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  /// 🔥 LOGIN EMAIL & PASSWORD
  Future<void> login() async {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar("Error", "Email & Password wajib diisi");
      return;
    }

    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 1)); // simulasi loading

    final savedEmail = box.read('email');
    final savedPassword = box.read('password');

    if (email.value == savedEmail && password.value == savedPassword) {
      box.write('isLogin', true);

      Get.snackbar("Success", "Login berhasil");
      Get.offAllNamed('/home');
    } else {
      Get.snackbar("Error", "Email atau Password salah");
    }

    isLoading.value = false;
  }

  /// 🔥 LOGIN BIOMETRIC
  Future<void> loginWithFaceID() async {
    bool success;

    if (kIsWeb) {
      success = true; // web fallback
    } else {
      success = await authService.authenticate();
    }

    if (success) {
      box.write('isLogin', true);

      Get.snackbar("Success", "Login dengan Face ID berhasil");
      Get.offAllNamed('/home');
    } else {
      Get.snackbar("Error", "Gagal autentikasi biometrik");
    }
  }
}