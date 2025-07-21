import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import '../../../../../core/style/style.dart';
import '../../../../../core/utils/asset_util.dart';
import '../controller/leave_controller.dart';

class LeaveExcuseCard extends GetResponsiveView<LeaveController> {
  final int id;

  LeaveExcuseCard({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(LeaveDetailRoutes.leaveDetailRoute(id)),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          AssetUtil().path(path: 'icon/icon-leave.png'),
                          height: 22,
                        ),
                        SizedBox(width: 10),
                        Text('11D3', style: TextStyle(fontSize: 16.sp)),
                        SizedBox(width: 10),
                        Text(
                          'Excuse',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            '07 - 04 - 2025  17 : 58',
                            style: TextStyle(fontSize: 10.sp, color: colorGreyDark),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: colorBackground),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    child: Image.asset(
                      AssetUtil().path(path: 'example/example-user-profile.png'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jacob Jones',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Text(
                                  'Operational staff',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: colorGreyDark,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Approved',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: colorTheme,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              color: colorGreyDark,
                              size: 16,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Tue, 15 April 2025  to Tue, 22 April 2025',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: colorGreyDark,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: colorGreyDark,
                                    size: 16,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Vacation',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: colorGreyDark,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '3 Days',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: colorGreyDark,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5)
          ],
        ),
      ),
    );
  }
}
