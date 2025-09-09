import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/bank/controller/profile_bank_controller.dart';

class ProfileBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileBankController());
  }
}
