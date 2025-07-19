import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hr_360/presentation/controller/permission_controller.dart';

import '../data/leave_stats_data.dart';

class LeaveController extends GetxController {
  var currentIndex = 0.obs;

  final List<String> navItems = [
    'Presence', 'History', 'Approval'
  ];

  void thisCurrentIndex (int index) {
    currentIndex.value = index;
  }

  bool isSelected(int index) {
    return currentIndex.value == index;
  }

  bool isRemainingHour = false;
  bool isTotalHour = false;
  double remainingHour = 0;
  double totalHour = 0;

  void remainingHourConverter(int index) {
    if (listLeaveStats[index].remaining % 1 > 0) {
      remainingHour = (listLeaveStats[index].remaining % 1) * 9;
      isRemainingHour = true;
    }
    if (listLeaveStats[index].total % 1 > 0) {
      totalHour = (listLeaveStats[index].total % 1) * 9;
      isTotalHour = true;
    }
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

  //
  // final AlertController alertController = Get.put(AlertController());

  final PermissionController permissionController = Get.put(
    PermissionController(),
  );
}