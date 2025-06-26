import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  late Rxn<DateTime> fromDate = Rxn<DateTime>(null);
  late Rxn<DateTime> toDate = Rxn<DateTime>(null);

  late Rxn<TimeOfDay> fromTime = Rxn<TimeOfDay>(null);
  late Rxn<TimeOfDay> toTime = Rxn<TimeOfDay>(null);
}