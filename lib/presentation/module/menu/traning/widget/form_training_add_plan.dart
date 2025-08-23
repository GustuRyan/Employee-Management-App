import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_add_plan_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/config/routes.dart';
import '../../../../../core/style/style.dart';

class FormTrainingAddPlan extends GetResponsiveView<TrainingAddPlanController> {
  FormTrainingAddPlan({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedUnit = 'Select Unit';
    String? selectedProgram = 'Select Program';
    String? selectedOrganizer = 'Select';
    String? selectedVenue = 'Select Venue';
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: paddingMd),
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
            xs: 12,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TITLE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Title',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: TextStyle(color: colorGrey, fontSize: 16.sp),
                      onChanged: (value) {},
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
                    'UNIT',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  DropdownButtonFormField<String>(
                    value: selectedUnit,
                    items:
                    ['Select Unit', 'Asc', 'Desc']
                        .map(
                          (item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: Get.textTheme.bodyLarge!.merge(
                            TextStyle(color: colorGrey, fontSize: 16.sp),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                    onChanged: (value) {
                      selectedUnit = value;
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
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
                    'TRAINING PROGRAM',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  DropdownButtonFormField<String>(
                    value: selectedProgram,
                    items:
                    ['Select Program', 'Asc', 'Desc']
                        .map(
                          (item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: Get.textTheme.bodyLarge!.merge(
                            TextStyle(color: colorGrey, fontSize: 16.sp),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                    onChanged: (value) {
                      selectedProgram = value;
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
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
                    'ORGANIZER',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  DropdownButtonFormField<String>(
                    value: selectedOrganizer,
                    items:
                    ['Select', 'Asc', 'Desc']
                        .map(
                          (item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: Get.textTheme.bodyLarge!.merge(
                            TextStyle(color: colorGrey, fontSize: 16.sp),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                    onChanged: (value) {
                      selectedOrganizer = value;
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
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
                    'VENUE',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  DropdownButtonFormField<String>(
                    value: selectedVenue,
                    items:
                    ['Select Venue', 'Asc', 'Desc']
                        .map(
                          (item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: Get.textTheme.bodyLarge!.merge(
                            TextStyle(color: colorGrey, fontSize: 16.sp),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                    onChanged: (value) {
                      selectedVenue = value;
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
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
                    'NUMBER OF PLAN',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Add number of plan',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(color: colorGrey, fontSize: 16.sp),
                    onChanged: (value) {},
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
                    'REMARK',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Remark',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(color: colorGrey, fontSize: 16.sp),
                    onChanged: (value) {},
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
                    'TRAINER',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () => Get.toNamed(trainingAddAttendanceRoute),
                    child: DottedBorder(
                      borderType: BorderType.Circle,
                      dashPattern: [7, 6],
                      color: colorTheme,
                      strokeWidth: 3,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.add, size: 24, color: colorGreyDark,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}