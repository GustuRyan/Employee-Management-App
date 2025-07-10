import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';
import 'package:hr_360/presentation/widget/customs/custom_appbar_blue.dart';
import 'package:hr_360/presentation/widget/modals/modal_attendance_popup.dart';
import 'package:hr_360/presentation/widget/customs/custom_clock_widget.dart';
import 'package:hr_360/presentation/module/home/widget/home_announcements.dart';
import 'package:hr_360/presentation/module/home/widget/home_bottom_menu_modal.dart';
import 'package:hr_360/presentation/module/home/widget/home_today_schedule.dart';
import 'package:hr_360/presentation/widget/customs/custom_stacking_hero_section.dart';

import '../../../core/config/routes.dart';
import '../../../core/utils/asset_util.dart';

class HomeScreen extends GetResponsiveView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult:
          (didPop, result) => controller.alertController.scaffoldMessengerAlert(
            context: context,
            backgroundColor: colorError,
            textColor: colorWhite,
            title: "Tekan OK untuk menutup aplikasi",
            label: "OK",
            onTap:
                () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
          ),
      child: Scaffold(
        backgroundColor: colorBackground,
        key: controller.scaffoldDashboardKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(72),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: paddingMd),
            color: colorTheme,
            child: CustomAppbarBlue(
              leading: IconButton(
                onPressed: () {
                  Get.toNamed(profileRoute);
                },
                icon: Image.asset(
                  AssetUtil().path(path: 'icon/icon-profile.png'),
                  width: 35,
                  height: 35,
                ),
                iconSize: 35,
              ),
              action: [
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "This is notifications",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                  icon: Badge(
                    label: Text('1'),
                    child: const Icon(Icons.notifications_none_rounded),
                  ),
                  color: Colors.white,
                  iconSize: 32,
                ),
              ],
              title: 'Home',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StackingHeroSection(
                content: HomeTodaySchedule(
                  content: Column(
                    children: [
                      Text(
                        'W F O',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22.sp,
                          color: colorTheme,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '08.30 - 17.30',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          color: colorTheme,
                        ),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                  time: Column(
                    children: [
                      Text(
                        'Clock in at 08:25:25',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: colorSuccess,
                        ),
                      ),
                      SizedBox(height: 15),
                      CustomClockWidget(),
                      SizedBox(height: 25),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 32,
                          ),
                          backgroundColor: colorWarning,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => ClockAttendancePopup(),
                          );
                        },
                        child: Text(
                          'Clock Out',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingLg),
                child: HomeAnnouncements(
                  content: Padding(
                    padding: EdgeInsets.all(paddingSm),
                    child: Row(
                      children: [
                        Image.asset(
                          AssetUtil().path(path: 'example/example-medal.png'),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rewards',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Amet minim moll it non deserunt test tester',
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
        bottomNavigationBar: HomeBottomMenuModal(),
      ),
    );
  }
}
