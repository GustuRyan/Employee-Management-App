import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_add_schedule_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../widget/customs/custom_date_picker.dart';
import '../../../../widget/customs/custom_time_picker.dart';

class FormTraininigAddSchedule extends GetResponsiveView<TrainingAddScheduleController>{
  FormTraininigAddSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedVenue = 'Select Venue';
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: paddingMd),
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
            xs: 6,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: marginMd),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FROM',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  DatePicker(selectedDate: controller.fromDate),
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
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  TimePicker(selectedTime: controller.fromTime),
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
                    'TO',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  DatePicker(selectedDate: controller.toDate),
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
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  TimePicker(selectedTime: controller.toTime),
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
                    'TOTAL HOURS',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Hours',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(color: colorGrey),
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
                    'TRAINER',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    child: DottedBorder(
                      borderType: BorderType.Circle,
                      dashPattern: [10, 8],
                      color: colorTheme,
                      strokeWidth: 4,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.add, size: 32, color: colorGreyDark,),
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