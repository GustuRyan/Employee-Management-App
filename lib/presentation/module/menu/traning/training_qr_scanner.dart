import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_qr_code_controller.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

import '../../../../core/style/style.dart';

class TrainingQrScannerScreen extends GetResponsiveView<TrainingQrCodeController> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  TrainingQrScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          iconSize: arrowBackSize,
        ),
        centerTitle: true,
        title: Text(
          'Clock in',
          style: Get.textTheme.titleLarge?.merge(
            TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code),
            iconSize: arrowBackSize,
          ),
        ],
        scrolledUnderElevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: Container(
            color: colorBackground,
            height: 1,
          ),
        ),
      ),
      body: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: colorTheme,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: 350.w,
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController qrViewController) {
    controller.setQRController(qrViewController);

    qrViewController.scannedDataStream.listen((scanData) {
      final code = scanData.code ?? '';
      controller.updateQRResult(code);
      qrViewController.pauseCamera();
      Get.snackbar('QR Code', 'Hasil: $code');
    });
  }
}