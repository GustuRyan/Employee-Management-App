import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/contract/controller/profile_contract_controller.dart';

class ProfileContractBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileContractController());
  }
}
