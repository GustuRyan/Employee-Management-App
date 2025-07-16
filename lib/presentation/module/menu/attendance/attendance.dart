import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/widget/customs/custom_appbar_blue.dart';
import 'package:hr_360/presentation/widget/modals/modal_attendance_popup.dart';
import 'package:hr_360/presentation/widget/customs/custom_clock_widget.dart';
import 'package:hr_360/presentation/module/home/widget/home_today_schedule.dart';
import 'package:hr_360/presentation/widget/customs/custom_stacking_hero_section.dart';
import 'package:hr_360/presentation/module/menu/attendance/widget/attendance_graphics.dart';
import 'controller/attendance_controller.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AttendanceScreen extends GetResponsiveView<AttendanceController> {
  AttendanceScreen({super.key});

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  final int _currentIndex = 0;

  final List<Map<String, dynamic>> _navItems = [
    {'title': 'Presence', 'icon': Icons.home},
    {'title': 'History', 'icon': Icons.search},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      key: controller.scaffoldDashboardKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72),
        child: CustomAppbarBlue(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: arrowBackSize,
          ),
          action: [SizedBox()],
          title: 'Attendance',
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingLg),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Summary',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  AttendanceGraphics(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: paddingSm),
        decoration: BoxDecoration(color: Colors.white),
        child: CarouselSlider.builder(
          itemCount: _navItems.length,
          options: CarouselOptions(
            height: 60,
            viewportFraction: 0.3,
            onPageChanged: (index, reason) {},
            enableInfiniteScroll: false,
          ),
          itemBuilder: (context, index, realIndex) {
            bool isSelected = _currentIndex == index;
            return GestureDetector(
              onTap: () {},
              child: Text(
                _navItems[index]['title'],
                style: TextStyle(
                  color: isSelected ? colorTheme : colorGreyDark,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: isSelected ? 18 : 16,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
