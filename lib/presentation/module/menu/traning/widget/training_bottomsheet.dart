import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_add.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_add_tim.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_controller.dart';

class TrainingBottomsheet extends GetResponsiveView<TrainingController> {
  TrainingBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 300,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(paddingMd),
                child: Text(
                  "Create New",
                  style: Get.textTheme.titleLarge!.merge(
                    const TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () =>
                      Get.toNamed(trainingAddPlanRoute),
                    child: Padding(
                      padding: EdgeInsets.all(paddingMd),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 20),
                          Text(
                            "Create training based on plan",
                            style: Get.textTheme.titleMedium!.merge(
                              const TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(trainingAddRoute),
                    child: Padding(
                      padding: EdgeInsets.all(paddingMd),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 20),
                          Text(
                            "Create training directly",
                            style: Get.textTheme.titleMedium!.merge(
                              const TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
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
  }
}
