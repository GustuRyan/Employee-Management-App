import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_attendance_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/form_training_add.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/training_attendance_bottomsheet.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../core/style/style.dart';
import '../../../../core/utils/asset_util.dart';
import '../../../widget/customs/custom_form_bottom_nav.dart';

class TrainingAttendanceScreen
    extends GetResponsiveView<TrainingAttendanceController> {
  TrainingAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          iconSize: arrowBackSize,
        ),
        centerTitle: true,
        title: Text(
          'Training Attendance',
          style: Get.textTheme.titleLarge?.merge(
            TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: arrowBackSize,
          ),
        ],
        scrolledUnderElevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: Container(color: colorBackground, height: 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) {
            return Obx(
              () => Container(
                padding: EdgeInsets.all(paddingMd),
                color:
                    controller.activedCard.contains(index)
                        ? colorBackground
                        : Colors.white,
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset(
                          AssetUtil().path(
                            path: 'example/example-user-profile.png',
                          ),
                          width: 50.w,
                          height: 50.h,
                        ),
                        Positioned(
                          right: -2,
                          top: -2,
                          child:
                              controller.activedCard.contains(index)
                                  ? Image.asset(
                                    AssetUtil().path(
                                      path:
                                          'icon/icon_check_circle_full_blue.png',
                                    ),
                                    width: 15.w,
                                    height: 15.h,
                                  )
                                  : SizedBox(),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dianne Russel',
                          style: Get.textTheme.bodyLarge!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Text(
                          'Operational Staff',
                          style: Get.textTheme.bodyMedium!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w500,
                              color: colorGrey,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        '2 Hrs',
                        style: TextStyle(
                          color: colorTheme,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '88 Pts',
                        style: TextStyle(
                          color: colorTheme,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    InkWell(child: Icon(Icons.more_vert_rounded)),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => showModalBottomSheet<void>(
              context: context,
              backgroundColor: Colors.white,
              builder: (BuildContext context) {
                return TrainingAttendanceBottomsheet();
              },
            ),
        foregroundColor: colorWhite,
        backgroundColor: colorButton,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
