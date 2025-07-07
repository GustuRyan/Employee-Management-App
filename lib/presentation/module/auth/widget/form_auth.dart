import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_controller.dart';
import 'package:hr_360/presentation/widget/form/form_text_widget.dart';

class FormAuthWidget extends GetResponsiveView<AuthController> {
  FormAuthWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: controller.authFormKey,
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
                    'Sign In',
                    style: Get.textTheme.titleMedium!.merge(
                      TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: Text(
                    'Login to your account',
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
                      controller.passwordFocus.unfocus();
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
                const SizedBox(height: 5),
                // Remember Me
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginXs),
                  child: Row(
                    children: [
                      Checkbox(
                        value: controller.isRememberMe.value,
                        onChanged: (value) {
                          controller.isRememberMe.value = value!;
                        },
                      ),
                      Text(
                        'Ingatkan Saya',
                        style: Get.textTheme.bodyMedium!.merge(
                          TextStyle(color: colorBlack, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                // Login
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.authFormKey.currentState!.validate()) {
                        if (controller.isRememberMe.value == false) {
                          Fluttertoast.showToast(
                            msg: 'Login sedang diproses',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: colorBlack,
                            textColor: colorWhite,
                            fontSize: 12.0,
                          );

                          controller.storage.remove('username');
                          controller.storage.remove('password');
                          controller.storage.remove('rememberMe');
                          Get.offAllNamed(homeRoute);
                        } else {
                          Fluttertoast.showToast(
                            msg: 'Login sedang diproses',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: colorBlack,
                            textColor: colorWhite,
                            fontSize: 12.0,
                          );

                          controller.storage.write(
                            'username',
                            controller.inputUsername.text,
                          );
                          controller.storage.write(
                            'password',
                            controller.inputPassword.text,
                          );
                          controller.storage.write(
                            'rememberMe',
                            controller.isRememberMe.value.toString(),
                          );
                          Get.offAllNamed(homeRoute);
                        }
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
                      'Sign In',
                      style: Get.textTheme.titleMedium!.merge(
                        TextStyle(color: colorWhite, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: marginXs),
                // Forget Password
                RichText(
                  text: TextSpan(
                    text: 'Forget Password ?',
                    style: Get.textTheme.bodySmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: '   Get help here',
                        style: Get.textTheme.bodySmall!.merge(
                          TextStyle(color: colorButton),
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(authForgetPasswordRoute);
                              },
                      ),
                    ],
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
                // Register
                RichText(
                  text: TextSpan(
                    text: 'Don`t have account ?',
                    style: Get.textTheme.bodySmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: '   Sign Up',
                        style: Get.textTheme.bodySmall!.merge(
                          TextStyle(color: colorError),
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(authRegisterRoute);
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
