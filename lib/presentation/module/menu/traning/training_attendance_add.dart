import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/style/style.dart';
import '../../../../core/utils/asset_util.dart';
import '../../../widget/customs/custom_form_bottom_nav.dart';
import 'controller/training_attendance_add_controller.dart';

class TrainingAttendanceAddScreen
    extends GetResponsiveView<TrainingAttendanceAddController> {
  TrainingAttendanceAddScreen({super.key});

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
          'Add Attendance',
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
                  () => Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingXs),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(controller.activedCard.length, (
                        index,
                        ) {
                      return GestureDetector(
                        onTap:
                            () => controller.activedCard.remove(
                          controller.activedCard[index],
                        ),
                        child: Container(
                          padding: EdgeInsets.all(paddingSm),
                          child: Column(
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
                                    child: Image.asset(
                                      AssetUtil().path(
                                        path:
                                        'icon/icon_close_circle_full_grey.png',
                                      ),
                                      width: 15.w,
                                      height: 15.h,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                controller.shortenText('Dianne Russel', 4),
                                style: Get.textTheme.bodyMedium!.merge(
                                  TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(10, (index) {
                return GestureDetector(
                  onTap: () {
                    if (controller.activedCard.contains(index)) {
                      controller.activedCard.remove(index);
                    } else {
                      controller.activedCard.add(index);
                    }
                  },
                  child: Obx(
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
                                  TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                                ),
                              ),
                              Text(
                                'Operational Staff',
                                style: Get.textTheme.bodyMedium!.merge(
                                  TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: colorGrey, fontSize: 14.sp
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
            () => CustomFormBottomNav(
          cancelButton: 'Cancel',
          confirmButton: 'Add',
          isDisabled: controller.activedCard.isEmpty,
        ),
      ),
    );
  }
}
