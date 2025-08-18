import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainingAddPlanController extends GetxController {
  late Rxn<DateTime> fromDate = Rxn<DateTime>(null);
  late Rxn<DateTime> toDate = Rxn<DateTime>(null);

  late Rxn<TimeOfDay> fromTime = Rxn<TimeOfDay>(null);
  late Rxn<TimeOfDay> toTime = Rxn<TimeOfDay>(null);

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