// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hr_360/presentation/controller/alert_controller.dart';

class AuthVerificationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startTimer();
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

  var secondsRemaining = 180.obs;
  var isResendEnabled = false.obs;

  void startTimer() {
    secondsRemaining.value = 180;
    isResendEnabled.value = false;
    Future.doWhile(() async {
      if (secondsRemaining.value == 0) {
        isResendEnabled.value = true;
        return false;
      }
      await Future.delayed(const Duration(seconds: 1));
      secondsRemaining.value--;
      return true;
    });
  }

  String get timerText {
    final minutes = (secondsRemaining.value ~/ 60).toString().padLeft(2, '0');
    final seconds = (secondsRemaining.value % 60).toString().padLeft(2, '0');
    return '$minutes : $seconds';
  }

  final GlobalKey<FormState> authVerificationKey = GlobalKey<FormState>();
  final codeControllers = List.generate(4, (index) => TextEditingController());

  fieldFocusChange(
    BuildContext context,
    FocusNode currentFocus,
    FocusNode nextFocus,
  ) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  final AlertController alertController = Get.put(AlertController());
}
