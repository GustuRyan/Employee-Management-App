import 'package:get/get.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_forget_password_controller.dart';

class AuthForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthForgetPasswordController());
  }
}
