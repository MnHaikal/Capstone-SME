import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  final box = GetStorage();

  var email = ''.obs;
  var password = ''.obs;

  void register() {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar("Error", "Semua field wajib diisi");
      return;
    }

    // 🔥 simpan ke local storage
    box.write('email', email.value);
    box.write('password', password.value);

    Get.snackbar("Success", "Register berhasil");
    Get.offAllNamed('/login');
  }
}