import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/auth/controller/auth_forget_password_controller.dart';
import 'package:hr_360/presentation/widget/form/form_text_widget.dart';

class FormAuthForgetPasswordWidget
    extends GetResponsiveView<AuthForgetPasswordController> {
  FormAuthForgetPasswordWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.authForgetPasswordFormKey,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // Username
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: Text(
                        'Forget Password',
                        style: Get.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: marginMd),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: marginMd),
                    child: FormTextWidget(
                      textController: controller.inputUsername,
                      focusNode: controller.usernameFocus,
                      onFieldSubmitted: (term) {
                        controller.usernameFocus.unfocus();
                      },
                      validator:
                          (String? value) =>
                              (value!.isEmpty) ? 'Masukkan username' : null,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                      hintText: 'Masukkan email',
                      suffixIcon: Icon(Icons.mail, color: colorButton),
                    ),
                  ),
                  SizedBox(height: marginSm),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(marginMd),
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {
                if (controller.authForgetPasswordFormKey.currentState!
                    .validate()) {}
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(marginXs),
                backgroundColor: colorButton.withValues(alpha: 0.75),
                elevation: 0.5,
                shape: RoundedRectangleBorder(borderRadius: borderRadiusXs),
              ),
              child: Text(
                'Send Request',
                style: Get.textTheme.titleMedium!.merge(
                  TextStyle(color: colorWhite, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
