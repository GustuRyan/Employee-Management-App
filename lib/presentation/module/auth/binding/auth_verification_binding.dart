import 'package:get/get.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_verification_controller.dart';

class AuthVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthVerificationController());
  }
}
