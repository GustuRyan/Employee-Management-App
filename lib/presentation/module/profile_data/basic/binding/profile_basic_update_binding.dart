import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/basic/controller/profile_basic_update_controller.dart';

class ProfileBasicUpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileBasicUpdateController());
  }
}
