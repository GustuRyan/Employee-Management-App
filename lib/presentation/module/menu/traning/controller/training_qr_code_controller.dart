import 'package:get/get.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

class TrainingQrCodeController extends GetxController {
  var qrResult = ''.obs;
  QRViewController? qrViewController;

  void updateQRResult(String result) {
    qrResult.value = result;
  }

  void setQRController(QRViewController controller) {
    qrViewController = controller;
  }

  void disposeQRController() {
    qrViewController?.dispose();
  }
}