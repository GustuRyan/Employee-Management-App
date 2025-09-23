import 'package:get/get.dart';
import 'package:hr_360/presentation/module/profile_data/document/controller/profile_document_controller.dart';

class ProfileDocumentBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileDocumentController());
  }
}
