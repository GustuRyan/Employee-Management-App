import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/basic/controller/profile_basic_controller.dart';
import 'package:hr_360/presentation/module/profile_data/basic/widget/form_profile_basic.dart';

class ProfileBasicScreen extends GetResponsiveView<ProfileBasicController> {
  ProfileBasicScreen({super.key});
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
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: Text(
              'Basic Information',
              style: Get.textTheme.titleLarge!.merge(
                const TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            backgroundColor: colorPrimary,
          ),
          backgroundColor: colorPrimary,
          resizeToAvoidBottomInset: false,
          body: SafeArea(child: FormProfileBasicWidget()),
        ),
      ),
    );
  }
}
