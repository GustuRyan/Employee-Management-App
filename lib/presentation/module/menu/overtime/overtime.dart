import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/controller/navbar_slider_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_active.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_approval.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/overtime_bottomsheet.dart';

import 'package:hr_360/presentation/module/menu/overtime/page/overtime_filter.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_history.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_tim.dart';
import 'package:hr_360/presentation/widget/customs/custom_appbar_blue.dart';
import 'package:hr_360/presentation/widget/customs/custom_navbar_slider.dart';

class OvertimeScreen extends GetResponsiveView<OvertimeController> {
  OvertimeScreen({super.key});

  final NavbarSliderController navbarSliderController = Get.put(
    NavbarSliderController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72),
        child: Obx(() {
          if (navbarSliderController.currentIndex.value == 0) {
            return CustomAppbarBlue(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: arrowBackSize,
              ),
              // action: [SizedBox()],
              title: 'Overtime',
              action: [
                IconButton(
                  color: colorWhite,
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded),
                  iconSize: arrowBackSize,
                ),
                IconButton(
                  color: colorWhite,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OvertimeFilter()),
                    );
                  },
                  icon: Icon(Icons.tune_rounded),
                  iconSize: arrowBackSize,
                ),
              ],
            );
          } else {
            return AppBar(
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                iconSize: arrowBackSize,
              ),
              title: Text(
                "Overtime",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              actionsPadding: EdgeInsets.only(right: 5),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded),
                  iconSize: arrowBackSize,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OvertimeFilter()),
                    );
                  },
                  icon: Icon(Icons.tune_rounded),
                  iconSize: arrowBackSize,
                ),
              ],
            );
          }
        }),
      ),
      body: SingleChildScrollView(
        child: Obx(() {
          if (navbarSliderController.currentIndex.value == 0) {
            return OvertimeActive();
          } else if (navbarSliderController.currentIndex.value == 1) {
            return OvertimeHistory();
          } else if (navbarSliderController.currentIndex.value == 2) {
            return OvertimeApproval();
          } else {
            return OvertimeTim();
          }
        }),
      ),
      floatingActionButton: Obx(
        () =>
            navbarSliderController.currentIndex.value == 0
                ? FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return OvertimeBottomSheet();
                      },
                    );
                  },
                  foregroundColor: colorWhite,
                  backgroundColor: colorButton,
                  shape: CircleBorder(),
                  child: const Icon(Icons.add),
                )
                : SizedBox(),
      ),
      bottomNavigationBar: CustomNavbarSlider(navItems: controller.navItems),
    );
  }
}
