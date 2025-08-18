import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainingAttendanceController extends GetxController {
  RxList<int> activedCard = <int>[].obs;

  String shortenText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}