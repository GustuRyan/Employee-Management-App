import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_add.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_add_tim.dart';

class OvertimeBottomSheet extends GetResponsiveView<OvertimeController> {
  OvertimeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 400.h,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(paddingLg),
            child: Column(
              children: [
                Text(
                  "Create New",
                     style: Get.textTheme.titleMedium!.merge(
                               TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
                            ),
                ),
                SizedBox(height: 50.h),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OvertimeAdd(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 20.sp),
                          Text(
                            "Create my overtime",
                            style: Get.textTheme.titleMedium!.merge(
                               TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OvertimeAddTim(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 20.w),
                          Text(
                            "Create team overtime",
                                style: Get.textTheme.titleMedium!.merge(
                               TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
