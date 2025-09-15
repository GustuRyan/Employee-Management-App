import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/company/controller/profile_company_controller.dart';

class ProfileCompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileCompanyController());
  }
}
