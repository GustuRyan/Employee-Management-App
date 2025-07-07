// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hr_360/presentation/controller/alert_controller.dart';

class AuthRegisterController extends GetxController {
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

  GetStorage storage = GetStorage('Dimata');

  final GlobalKey<FormState> authRegisterFormKey = GlobalKey<FormState>();
  final TextEditingController inputUsername = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();
  final TextEditingController inputRePassword = TextEditingController();
  final FocusNode usernameFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode rePasswordFocue = FocusNode();

  final RxBool isShowPassword = true.obs;
  void visibilityPassword() {
    isShowPassword.value = !isShowPassword.value;
    update();
  }

  final RxBool isShowRePassword = true.obs;
  void visibilityRePassword() {
    isShowRePassword.value = !isShowRePassword.value;
    update();
  }

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
