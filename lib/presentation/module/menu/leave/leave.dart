import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/widget/customs/custom_appbar_blue.dart';
import 'package:hr_360/presentation/widget/customs/custom_navbar_slider.dart';
import 'package:hr_360/presentation/widget/customs/custom_stacking_hero_section.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:hr_360/presentation/module/menu/leave/widget/leave_card.dart';
import 'package:hr_360/presentation/module/menu/leave/widget/leave_excuse_card.dart';
import 'package:hr_360/presentation/module/menu/leave/widget/leave_stats_bar.dart';

import '../../../controller/navbar_slider_controller.dart';
import 'controller/leave_controller.dart';

class LeaveScreen extends GetResponsiveView<LeaveController> {
  LeaveScreen({super.key});

  final NavbarSliderController navbarSliderController = Get.put(
    NavbarSliderController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Obx(() {
          if (navbarSliderController.currentIndex.value == 0) {
            return CustomAppbarBlue(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: arrowBackSize,
              ),
              action: [SizedBox()],
              title: 'Leave',
            );
          } else {
            return AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                iconSize: arrowBackSize,
              ),
              title: Text(
                "Leave",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              actionsPadding: EdgeInsets.only(right: 5),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded),
                  iconSize: arrowBackSize,
                ),
                IconButton(
                  onPressed: () => Get.toNamed(leaveFilterRoute),
                  icon: Icon(Icons.tune_rounded),
                  iconSize: arrowBackSize,
                ),
              ],
            );
          }
        }),
      ),
      body: SingleChildScrollView(
        child: Obx(() {
          if (navbarSliderController.currentIndex.value == 0) {
            return Column(
              children: [
                StackingHeroSection(content: LeaveStatsBar()),
                Container(
                  padding: EdgeInsets.all(paddingLg),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Active Application',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        height: 580,
                        child: SingleChildScrollView(
                          child: Column(
                            children: List.generate(10, (index) {
                              return LeaveCard();
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (navbarSliderController.currentIndex.value == 1) {
            return Container(
              padding: EdgeInsets.all(paddingLg),
              child: Column(
                children: List.generate(10, (index) {
                  return LeaveCard();
                }),
              ),
            );
          } else {
            return Container(
              padding: EdgeInsets.all(paddingLg),
              child: Column(
                children: List.generate(10, (index) {
                  return LeaveExcuseCard(id: index);
                }),
              ),
            );
          }
        }),
      ),
      floatingActionButton: Obx(
        () =>
            navbarSliderController.currentIndex.value == 0
                ? FloatingActionButton(
                  onPressed: () => Get.toNamed(leaveCreateRoute),
                  foregroundColor: colorWhite,
                  backgroundColor: colorButton,
                  shape: CircleBorder(),
                  child: const Icon(Icons.add),
                )
                : SizedBox(),
      ),
      bottomNavigationBar: CustomNavbarSlider(navItems: controller.navItems)
    );
  }
}
