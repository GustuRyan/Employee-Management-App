import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_controller.dart';
import 'package:hr_360/presentation/module/auth/widget/form_auth.dart';

class AuthScreen extends GetResponsiveView<AuthController> {
  AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult:
          (didPop, result) => controller.alertController.scaffoldMessengerAlert(
            context: context,
            backgroundColor: colorError,
            textColor: colorWhite,
            title: "Tekan OK untuk menutup aplikasi",
            label: "OK",
            onTap:
                () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
          ),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            surfaceTintColor: null,
            scrolledUnderElevation: 0,
            leading: IconButton(
              onPressed:
                  () => controller.alertController.scaffoldMessengerAlert(
                    context: context,
                    backgroundColor: colorError,
                    textColor: colorWhite,
                    title: "Tekan OK untuk menutup aplikasi",
                    label: "OK",
                    onTap:
                        () => SystemChannels.platform.invokeMethod(
                          'SystemNavigator.pop',
                        ),
                  ),
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
          body: SafeArea(child: FormAuthWidget()),
        ),
      ),
    );
  }
}
