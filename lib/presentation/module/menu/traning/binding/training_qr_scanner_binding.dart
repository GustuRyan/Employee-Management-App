import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_qr_code_controller.dart';

class TrainingQrScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingQrCodeController());
  }
}