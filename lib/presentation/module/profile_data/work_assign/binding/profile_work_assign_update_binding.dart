import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/work_assign/controller/profile_work_assign_update_controller.dart';

class ProfileWorkAssignUpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileWorkAssignUpdateController());
  }
}
