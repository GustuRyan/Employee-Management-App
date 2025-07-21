import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_detail_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/style/style.dart';
import '../../../../../core/utils/asset_util.dart';

class FormLeaveDetail extends GetResponsiveView<LeaveDetailController>{
  FormLeaveDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: paddingMd),
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Row(
                  children: [
                    Image.asset(
                      AssetUtil().path(
                        path: 'example/example-user-profile.png',
                      ),
                      height: 60.h,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dianne Russel',
                          style: Get.textTheme.bodyLarge!.merge(
                            TextStyle(fontWeight: FontWeight.w800, fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Operational Staff',
                          style: Get.textTheme.bodyLarge!.merge(
                            TextStyle(
                                fontWeight: FontWeight.w400,
                                color: colorGrey,
                                fontSize: 14.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'START DATE',
                      style: Get.textTheme.bodyMedium!.merge(
                        TextStyle(
                            fontWeight: FontWeight.w800,
                            color: colorGrey,
                            fontSize: 16.sp
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Wed, 30 April 2025',
                      style: Get.textTheme.bodySmall!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TIME',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16.sp,
                          color: colorGrey,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '08:30',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'END DATE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16.sp,
                          color: colorGrey,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Fri, 2 May 2025',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TIME',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16.sp,
                          color: colorGrey,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '08:30',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'APPLICATION TYPE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800,
                          color: colorGrey, fontSize: 16.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Excuse application',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'REASON',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800,
                          color: colorGrey, fontSize: 16.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Vacation',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}