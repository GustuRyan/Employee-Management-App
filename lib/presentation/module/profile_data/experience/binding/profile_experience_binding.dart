import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/experience/controller/profile_experience_controller.dart';

class ProfileExperienceBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileExperienceController());
  }
}
