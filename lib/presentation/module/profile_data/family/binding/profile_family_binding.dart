import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/family/controller/profile_family_controller.dart';

class ProfileFamilyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileFamilyController());
  }
}
