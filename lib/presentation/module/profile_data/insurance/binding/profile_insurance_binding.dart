import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/insurance/controller/profile_insurance_controller.dart';

class ProfileInsuranceBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileInsuranceController());
  }
}
