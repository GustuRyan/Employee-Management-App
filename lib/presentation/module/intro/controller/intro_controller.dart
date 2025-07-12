// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:hr_360/presentation/controller/alert_controller.dart';
import 'package:hr_360/presentation/controller/permission_controller.dart';

class IntroController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    permissionController.checkPermissionRequest();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  var currentPage = 0.obs;

  void changePage(int index) {
    currentPage.value = index;
  }

  final AlertController alertController = Get.put(AlertController());

  final PermissionController permissionController = Get.put(
    PermissionController(),
  );
}
