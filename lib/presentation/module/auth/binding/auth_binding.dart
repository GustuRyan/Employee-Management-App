import 'package:get/get.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
