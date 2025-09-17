import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/competency/controller/profile_competency_controller.dart';

class ProfileCompetencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileCompetencyController());
  }
}
