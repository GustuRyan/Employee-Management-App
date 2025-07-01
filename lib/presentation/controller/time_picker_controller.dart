import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TimePickerController extends GetxController {

  Future<void> pickTime(BuildContext context, Rxn<TimeOfDay> selectedTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime.value ?? TimeOfDay.now(),
    );
    if (picked != null) {
      selectedTime.value = picked;
    }
  }
}
