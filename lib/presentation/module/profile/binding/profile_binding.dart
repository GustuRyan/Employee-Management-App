import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile/controller/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}