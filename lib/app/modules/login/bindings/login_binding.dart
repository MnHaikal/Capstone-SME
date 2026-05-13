import 'package:get/get.dart';
<<<<<<< HEAD
import '../controllers/login_controller.dart'; 
=======
import '../controllers/login_controller.dart'; // ⬅️ WAJIB
>>>>>>> d333428b5d641271dd99cb762ab0435f4d814709

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}