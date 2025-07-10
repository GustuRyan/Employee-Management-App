import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

import '../../../../core/config/routes.dart';

class HomeTodaySchedule extends GetResponsiveView<HomeController> {
  final Widget content;
  final Widget time;

  HomeTodaySchedule({super.key, required this.content, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Get.toNamed(workingScheduleRoute);
              },
              icon: Image.asset(
                AssetUtil().path(
                  path: 'icon/icon-calendar-blue.png',
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(workingScheduleRoute);
                },
                child: Text(
                  "Today Schedule",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: Colors.black
                  ),
                ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)
            )
          ],
        ),
        Container(
          child: content,
        ),
        Container(
          child: time,
        ),
      ],
    );
  }
}
