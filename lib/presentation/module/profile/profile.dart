import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile/controller/profile_controller.dart';
import 'package:hr_360/presentation/module/profile/widget/profile_header.dart';
import 'package:hr_360/presentation/module/profile/widget/profile_menu.dart';

class ProfileScreen extends GetResponsiveView<ProfileController> {
  ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: null,
          centerTitle: true,
          scrolledUnderElevation: 0,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back, color: colorWhite),
          ),
          title: Text(
            'My Profile',
            style: Get.textTheme.titleMedium!.merge(
              TextStyle(
                color: colorWhite,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: colorTheme,
        ),
        backgroundColor: colorPrimary,
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: Container(
          margin: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [ProfileHeaderWidget(), ProfileMenuWidget()],
                  ),
                ),
              ),
              SizedBox(height: marginMd),
            ],
          ),
        ),
      ),
    );
  }
}