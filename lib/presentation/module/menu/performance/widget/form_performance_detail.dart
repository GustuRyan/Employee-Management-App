import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_detail_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/style/style.dart';
import '../../../../widget/customs/custom_date_picker.dart';

class FormPerformanceDetail
    extends GetResponsiveView<PerformanceDetailController> {
  FormPerformanceDetail({super.key});

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
              xs: 12,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KPI',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800,
                          color: colorGrey,
                          fontSize: 16.sp
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Daily Sales',
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
                      'ACHIEVEMENT DATE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16.sp,
                          color: colorGrey,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Wed, 30 April 2025',
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
                      'ACHIEVEMENT TYPE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16.sp,
                          color: colorGrey,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'In Progress',
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
                      'NOTE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w800,
                          color: colorGrey, fontSize: 16.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Pencairan PT. Taman Jaya',
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
