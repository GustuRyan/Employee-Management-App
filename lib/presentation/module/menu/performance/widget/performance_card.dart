import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_controller.dart';

class PerformanceCard extends GetResponsiveView<PerformanceController> {
  final String status;
  final int id;

  PerformanceCard({super.key, required this.status, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(PerformanceDetailRoutes.performanceDetailRoute(id)),
      child: Container(
        margin: EdgeInsets.only(bottom: paddingSm),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: paddingSm, bottom: 5, left: paddingSm, right: paddingSm),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Daily Sales',
                      style: Get.textTheme.titleSmall?.merge(
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '07 - 04 - 2025  17:58',
                        style: TextStyle(color: colorGreyDark, fontSize: 10.sp),
                      ),
                      InkWell(onTap: () {}, child: Icon(Icons.more_vert)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: colorBackground),
            Padding(
              padding: EdgeInsets.all(paddingSm),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today_rounded, size: 16,),
                            SizedBox(width: 10),
                            Text(
                              'Sat, 26 apr 2025',
                              style: TextStyle(color: colorGrey, fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Text(
                          'Pencairan PT. Taman Jaya',
                          style: TextStyle(color: colorGrey, fontSize: 12.sp),
                        ),
                        Text(
                          status,
                          style: TextStyle(
                            color:
                                status == 'Completed'
                                    ? colorTheme
                                    : status == 'In progress'
                                    ? colorSuccess
                                    : status == 'Rejected'
                                    ? colorError
                                    : colorGrey, fontSize: 12.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                  status == 'Completed'
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.check_circle_outline_rounded,
                            color: colorTheme,
                            size: 32.h,
                          ),
                        ],
                      )
                      : status == 'Rejected'
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Transform.rotate(
                            angle: pi / 4,
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.add_circle_outline_rounded,
                                color: colorError,
                                size: 32.h,
                              ),
                            ),
                          ),
                        ],
                      )
                      : status == 'Pending'
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Transform.rotate(
                            angle: pi / 4,
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.add_circle_rounded,
                                color: colorError,
                                size: 40.h,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.check_circle_rounded,
                              color: colorTheme,
                              size: 40.h,
                            ),
                          ),
                        ],
                      )
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
