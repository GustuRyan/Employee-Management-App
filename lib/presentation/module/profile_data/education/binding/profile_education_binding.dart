import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/education/controller/profile_education_controller.dart';

class ProfileEducationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileEducationController());
  }
}
