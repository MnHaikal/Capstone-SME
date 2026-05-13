import 'package:get/get.dart';
<<<<<<< HEAD
=======

>>>>>>> d333428b5d641271dd99cb762ab0435f4d814709
import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
