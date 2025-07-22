import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/data/model/card/card_model.dart';
import 'package:hr_360/data/model/profile/family/profile_family_model.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime.dart';
import 'package:responsive_grid/responsive_grid.dart';

class OvertimeDitail extends GetResponsiveView<OvertimeController> {
  OvertimeDitail({super.key, required this.data});
  final CardModel data;
  @override
  Widget build(BuildContext context) {
    if (data!.status.toString() == "active") {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            iconSize: arrowBackSize,
          ),
          title: Text(
            "Overtime detail",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(marginXs),
            child: Column(
              children: [
                AbsorbPointer(absorbing: true, child: CardOvertime(data: data)),
                Divider(height: 1, color: colorGreyLight),
                Padding(
                  padding: EdgeInsets.all(paddingXs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Paid with",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Text(
                        "Salary",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorGrey, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: colorGreyLight),

                Padding(
                  padding: EdgeInsets.all(paddingXs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Paid with",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Text(
                        "Salary",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorGrey, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: colorGreyLight),
                Padding(
                  padding: EdgeInsets.all(paddingXs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Allowance",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Text(
                        "Food",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorGrey, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: colorGreyLight),
                Padding(
                  padding: EdgeInsets.all(paddingXs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Actual In",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Friday, 18 Jun 2021",
                            style: Get.textTheme.titleMedium!.merge(
                              TextStyle(color: colorGrey, fontSize: 16.sp),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "10 : 50",
                            style: Get.textTheme.titleMedium!.merge(
                              TextStyle(color: colorGrey, fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: colorGreyLight),
                Padding(
                  padding: EdgeInsets.all(paddingXs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Actual Out",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Friday, 18 Jun 2021",
                            style: Get.textTheme.titleMedium!.merge(
                              TextStyle(color: colorGrey, fontSize: 16.sp),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "10 : 50",
                            style: Get.textTheme.titleMedium!.merge(
                              TextStyle(color: colorGrey, fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: colorGreyLight),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.close),
            iconSize: arrowBackSize,
          ),
          title: Text(
            "Overtime Detail",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(marginXs),
            child: Column(
              children: [
                AbsorbPointer(absorbing: true, child: CardOvertime(data: data)),
                Divider(height: 1, color: colorGreyLight),
                Padding(
                  padding: EdgeInsets.all(paddingXs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Paid with",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Text(
                        "Salary",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorGrey, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: colorGreyLight),
                Padding(
                  padding: EdgeInsets.all(paddingXs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Paid with",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Text(
                        "Food",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorGrey, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: colorGreyLight),
              ],
            ),
          ),
        ),
      );
    }
  }
}
