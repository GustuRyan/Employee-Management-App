import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/experience/controller/profile_experience_controller.dart';
import 'package:hr_360/presentation/module/profile_data/experience/widget/form_profile_experience.dart';

class ProfileExperienceScreen
    extends GetResponsiveView<ProfileExperienceController> {
  ProfileExperienceScreen({super.key});
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
              'Experience',
              style: Get.textTheme.titleLarge!.merge(
                const TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(right: marginMd),
                  child: Icon(Icons.search, color: colorBlack),
                ),
              ),
            ],
            backgroundColor: colorPrimary,
          ),
          backgroundColor: colorPrimary,
          resizeToAvoidBottomInset: false,
          body: SafeArea(child: FormProfileExperienceWidget()),
          floatingActionButton: FloatingActionButton(
            autofocus: false,
            tooltip: 'Add',
            backgroundColor: colorButton,
            shape: RoundedRectangleBorder(borderRadius: borderRadiusXl),
            onPressed: () {},
            child: Icon(Icons.add, color: colorWhite, size: 28),
          ),
        ),
      ),
    );
  }
}
