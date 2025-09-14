import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/career/controller/profile_career_controller.dart';

class ProfileCareerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileCareerController());
  }
}
