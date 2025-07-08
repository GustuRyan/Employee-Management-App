import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';

class AuthVerificationSuccessScreen extends GetResponsiveView {
  AuthVerificationSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => Get.offAllNamed(homeRoute),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            surfaceTintColor: null,
            scrolledUnderElevation: 0,
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
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: Image.asset(
                    AssetUtil().path(path: 'message/message-success.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: marginMd * 2),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: Text(
                    "Congratulation your account succesfully created",
                    textAlign: TextAlign.center,
                    style: Get.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: marginXs),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: Text(
                    "Welcome to Dimata HR 360",
                    textAlign: TextAlign.center,
                    style: Get.textTheme.bodyMedium!.merge(
                      TextStyle(color: colorGrey),
                    ),
                  ),
                ),
                SizedBox(height: marginMd * 2),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(homeRoute);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorButton.withValues(alpha: 0.75),
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadiusXs,
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: Get.textTheme.titleMedium!.merge(
                        TextStyle(color: colorWhite, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
