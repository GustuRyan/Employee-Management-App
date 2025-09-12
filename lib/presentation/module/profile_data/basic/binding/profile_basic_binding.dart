import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/basic/controller/profile_basic_controller.dart';

class ProfileBasicBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileBasicController());
  }
}
