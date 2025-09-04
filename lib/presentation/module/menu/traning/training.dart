import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/controller/navbar_slider_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_active.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_approval.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/overtime_bottomsheet.dart';

import 'package:hr_360/presentation/module/menu/overtime/page/overtime_filter.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_history.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_tim.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/page/trainig_active.dart';
import 'package:hr_360/presentation/module/menu/traning/page/training_actifity.dart';
import 'package:hr_360/presentation/module/menu/traning/page/training_history.dart';
import 'package:hr_360/presentation/module/menu/traning/page/training_plan.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/training_bottomsheet.dart';
import 'package:hr_360/presentation/widget/customs/custom_appbar_blue.dart';
import 'package:hr_360/presentation/widget/customs/custom_navbar_slider.dart';

class TrainingScreen extends GetResponsiveView<TrainingController> {
  TrainingScreen({super.key});

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
              
              title: 'My Training',
              action: [
                IconButton(
                  color: colorWhite,
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded),
                  iconSize: arrowBackSize,
                ),
                IconButton(
                  color: colorWhite,
                  onPressed: () => Get.toNamed(trainingFilterRoute),
                  icon: Icon(Icons.tune_rounded),
                  iconSize: arrowBackSize,
                ),
              ],
            );
          } else {
            return AppBar(
                scrolledUnderElevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                iconSize: arrowBackSize,
              ),
              title: Text(
                "Training",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              actionsPadding: EdgeInsets.only(right: 5),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded),
                  iconSize: arrowBackSize,
                ),
                IconButton(
                  onPressed: () => Get.toNamed(trainingFilterRoute),
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
            return TrainigActive();
          } else if (navbarSliderController.currentIndex.value == 1) {
            return TrainingHistory();
          } else if (navbarSliderController.currentIndex.value == 2) {
            return TrainingPlan();
          } else {
            return TrainingActifity();
          }
        }),
      ),
      floatingActionButton: Obx(
        () =>
            navbarSliderController.currentIndex.value == 2 ||  navbarSliderController.currentIndex.value == 3
                ? FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return TrainingBottomsheet();
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
