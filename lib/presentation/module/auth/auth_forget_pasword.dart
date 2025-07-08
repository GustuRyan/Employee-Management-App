import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_controller.dart';
import 'package:hr_360/presentation/module/auth/widget/form_auth_forget_password.dart';

class AuthForgetPasswordScreen extends GetResponsiveView<AuthController> {
  AuthForgetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            surfaceTintColor: null,
            scrolledUnderElevation: 0,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: Text(
              '',
              style: Get.textTheme.titleLarge!.merge(
                const TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            backgroundColor: colorWhite,
          ),
          backgroundColor: colorWhite,
          resizeToAvoidBottomInset: false,
          body: SafeArea(child: FormAuthForgetPasswordWidget()),
        ),
      ),
    );
  }
}
