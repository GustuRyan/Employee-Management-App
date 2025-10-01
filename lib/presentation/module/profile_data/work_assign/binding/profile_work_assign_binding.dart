import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/work_assign/controller/profile_work_assign_controller.dart';

class ProfileWorkAssignBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileWorkAssignController());
  }
}
