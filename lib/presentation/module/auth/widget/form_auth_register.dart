import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_register_controller.dart';
import 'package:hr_360/presentation/widget/form/form_text_widget.dart';

class FormAuthRegisterWidget extends GetResponsiveView<AuthRegisterController> {
  FormAuthRegisterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: controller.authRegisterFormKey,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: marginMd),
                // Header
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: Text(
                    'Sign Up',
                    style: Get.textTheme.titleMedium!.merge(
                      TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: Text(
                    'Create your account',
                    style: Get.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: marginMd * 3),
                // Username
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: FormTextWidget(
                    textController: controller.inputUsername,
                    focusNode: controller.usernameFocus,
                    onFieldSubmitted: (term) {
                      controller.fieldFocusChange(
                        context,
                        controller.usernameFocus,
                        controller.passwordFocus,
                      );
                    },
                    validator:
                        (String? value) =>
                            (value!.isEmpty) ? 'Masukkan username' : null,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    hintText: 'Username',
                  ),
                ),
                SizedBox(height: marginSm),
                // Pasword
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: FormTextWidget(
                    textController: controller.inputPassword,
                    focusNode: controller.passwordFocus,
                    onFieldSubmitted: (term) {
                      controller.fieldFocusChange(
                        context,
                        controller.passwordFocus,
                        controller.rePasswordFocue,
                      );
                    },
                    obscureText: controller.isShowPassword.value,
                    validator:
                        (String? value) =>
                            (value!.isEmpty) ? 'Masukkan password' : null,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    hintText: 'Password',
                    suffixIcon: InkWell(
                      onTap: () => controller.visibilityPassword(),
                      child: Icon(
                        controller.isShowPassword.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color:
                            controller.isShowPassword.value
                                ? colorGreyDark
                                : colorButton,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: marginSm),
                // Re-Password
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: FormTextWidget(
                    textController: controller.inputRePassword,
                    focusNode: controller.rePasswordFocue,
                    onFieldSubmitted: (term) {
                      controller.rePasswordFocue.unfocus();
                    },
                    obscureText: controller.isShowRePassword.value,
                    validator:
                        (String? value) =>
                            (value!.isEmpty) ? 'Masukkan ulang password' : null,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    hintText: 'Ulang Password',
                    suffixIcon: InkWell(
                      onTap: () => controller.visibilityRePassword(),
                      child: Icon(
                        controller.isShowRePassword.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color:
                            controller.isShowRePassword.value
                                ? colorGreyDark
                                : colorButton,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: marginSm),
                // Register
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.authRegisterFormKey.currentState!
                          .validate()) {
                        Get.toNamed(authVerificationRoute);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorError.withValues(alpha: 0.75),
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadiusXs,
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: Get.textTheme.titleMedium!.merge(
                        TextStyle(color: colorWhite, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: marginMd * 3),
                // Login With
                Text(
                  'Continue with',
                  style: Get.textTheme.titleMedium!.merge(
                    TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(height: marginXs),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorWhite,
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadiusXs,
                        side: BorderSide(color: colorBlack, width: 0.4),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset(
                            AssetUtil().path(path: 'logo/google.png'),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Continue with Google',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 24, height: 24),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: marginXs),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorWhite,
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadiusXs,
                        side: BorderSide(color: colorBlack, width: 0.4),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset(
                            AssetUtil().path(path: 'logo/facebook.png'),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Continue with Facebook',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 24, height: 24),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: marginMd * 3),
                // Login
                RichText(
                  text: TextSpan(
                    text: 'Already have account ?',
                    style: Get.textTheme.bodySmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: '   Sign In Here',
                        style: Get.textTheme.bodySmall!.merge(
                          TextStyle(color: colorButton),
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.back();
                              },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: marginMd),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
