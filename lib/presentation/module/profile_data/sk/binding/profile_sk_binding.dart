import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/sk/controller/profile_sk_controller.dart';

class ProfileSkBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileSkController());
  }
}
