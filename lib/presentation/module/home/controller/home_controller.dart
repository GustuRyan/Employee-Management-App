// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hr_360/presentation/controller/alert_controller.dart';
import 'package:hr_360/presentation/controller/permission_controller.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }

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

  GetStorage storage = GetStorage('Dimata');

  final GlobalKey<ScaffoldState> scaffoldDashboardKey =
      GlobalKey<ScaffoldState>();

  final RxInt currentNavbar = 0.obs;

  final AlertController alertController = Get.put(AlertController());

  final PermissionController permissionController = Get.put(
    PermissionController(),
  );
}
