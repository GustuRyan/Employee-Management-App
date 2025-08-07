import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/presentation/module/menu/performance/page/achievement/history_page.dart';
import 'package:hr_360/presentation/module/menu/performance/page/achievement/my_achievement_page.dart';
import 'package:hr_360/presentation/module/menu/performance/page/approval/approved_page.dart';
import 'package:hr_360/presentation/module/menu/performance/page/approval/pending_page.dart';
import 'package:hr_360/presentation/module/menu/performance/page/approval/rejected_page.dart';
import 'package:hr_360/presentation/module/menu/performance/page/performance_charts_page.dart';
import 'package:hr_360/presentation/widget/customs/custom_appbar_blue.dart';

import 'package:hr_360/presentation/module/working_schedule/widget/header_navigation.dart';
import '../../../../core/style/style.dart';
import '../../../controller/navbar_slider_controller.dart';
import '../../../widget/customs/custom_navbar_slider.dart';
import 'controller/performance_controller.dart';

class PerformanceScreen extends GetResponsiveView<PerformanceController> {
  PerformanceScreen({super.key});

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
              title: "Performance",
            );
          } else {
            return Column(
              children: [
                AppBar(
                  scrolledUnderElevation: 0,
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    iconSize: arrowBackSize,
                  ),
                  title: Text(
                    'Performance',
                      style: Get.textTheme.titleLarge?.merge(
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
                      ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_rounded),
                      iconSize: arrowBackSize,
                    ),
                    IconButton(
                      onPressed: () => Get.toNamed(performanceFiltersRoute),
                      icon: Icon(Icons.tune_rounded),
                      iconSize: arrowBackSize,
                    ),
                  ],
                ),
              ],
            );
          }
        }),
      ),
      body: Column(
        children: [
          Obx(() {
            if (navbarSliderController.currentIndex.value == 1) {
              return Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomNavButton(
                        title: 'My Achievement',
                        isSelected: controller.selectedIndex.value == 0,
                        onTap: () {
                          controller.changePage(0);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomNavButton(
                        title: 'History',
                        isSelected: controller.selectedIndex.value == 1,
                        onTap: () {
                          controller.changePage(1);
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else if(navbarSliderController.currentIndex.value == 2) {
              return Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomNavButton(
                        title: 'Pending',
                        isSelected: controller.selectedIndex.value == 0,
                        onTap: () {
                          controller.changePage(0);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomNavButton(
                        title: 'Approved',
                        isSelected: controller.selectedIndex.value == 1,
                        onTap: () {
                          controller.changePage(1);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomNavButton(
                        title: 'Rejected',
                        isSelected: controller.selectedIndex.value == 2,
                        onTap: () {
                          controller.changePage(2);
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return SizedBox();
            }
          }),
          Flexible(
            child: SingleChildScrollView(
              child: Obx(() {
                if (navbarSliderController.currentIndex.value == 0) {
                  return PerformanceChartsPage();
                } else if (navbarSliderController.currentIndex.value == 1) {
                  return controller.selectedIndex.value == 0
                      ? MyAchievementPage()
                      : HistoryPage();
                } else {
                  return controller.selectedIndex.value == 0
                      ? PendingPage()
                      : controller.selectedIndex.value == 1
                      ? ApprovedPage()
                      : RejectedPage();
                }
              }),
            ),
          ),
        ],
      ),
      floatingActionButton: Obx(
        () =>
            navbarSliderController.currentIndex.value == 0
                ? FloatingActionButton(
                  onPressed: () => Get.toNamed(performanceAddRoute),
                  foregroundColor: colorWhite,
                  backgroundColor: colorButton,
                  shape: CircleBorder(),
                  child: const Icon(Icons.add),
                )
                : SizedBox(),
      ),
      bottomNavigationBar: CustomNavbarSlider(navItems: controller.navItems),
    );
  }
}
