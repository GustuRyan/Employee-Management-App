import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_verification_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class AuthVerificationScreen
    extends GetResponsiveView<AuthVerificationController> {
  AuthVerificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopScope(
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
                'Verification Code',
                style: Get.textTheme.titleLarge!.merge(
                  const TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              centerTitle: true,
              backgroundColor: colorWhite,
            ),
            backgroundColor: colorWhite,
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Form(
                key: controller.authVerificationKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Image.asset(
                        AssetUtil().path(
                          path: 'message/message-verification.png',
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: marginMd * 2),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: Text(
                        "We've sent verification code to your email, please check your email and then enter 4 digits verification code below",
                        textAlign: TextAlign.center,
                        style: Get.textTheme.bodyMedium!.merge(
                          TextStyle(color: colorGrey),
                        ),
                      ),
                    ),
                    SizedBox(height: marginMd * 2),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: ResponsiveGridRow(
                        children: List.generate(
                          4,
                          (index) => ResponsiveGridCol(
                            xs: 3,
                            child: buildCodeBox(index),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: marginMd),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: Row(
                        children: [
                          Text(
                            controller.timerText,
                            style: const TextStyle(color: Colors.blue),
                          ),
                          Expanded(child: SizedBox(width: marginMd)),
                          InkWell(
                            onTap:
                                controller.isResendEnabled.value
                                    ? controller.startTimer
                                    : null,
                            child: const Text(
                              'Resend code',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: marginMd * 3),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: () {
                          if (controller.authVerificationKey.currentState!
                              .validate()) {
                            String code =
                                controller.codeControllers
                                    .map((e) => e.text)
                                    .join();

                            Fluttertoast.showToast(
                              msg: 'Kode OTP, $code',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: colorBlack,
                              textColor: colorWhite,
                              fontSize: 12.0,
                            );

                            Get.offAllNamed(authVerificationSuccessRoute);
                          }
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
                          'Send',
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
        ),
      ),
    );
  }

  Widget buildCodeBox(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: marginSm),
      child: TextFormField(
        controller: controller.codeControllers[index],
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        textAlign: TextAlign.center,
        style: Get.textTheme.titleLarge!.merge(
          TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
        ),
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        onChanged: (value) {
          if (value.isNotEmpty && index < 3) {
            FocusScope.of(Get.context!).nextFocus();
          }
        },
        validator: (String? value) => (value!.isEmpty) ? 'Masukkan OTP' : null,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: colorAccent, width: 3),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorAccent, width: 3),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorAccent, width: 3),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorError, width: 3),
          ),
        ),
      ),
    );
  }
}
