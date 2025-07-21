import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_add_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/style/style.dart';
import '../../../../widget/customs/custom_date_picker.dart';
import '../../../../widget/customs/custom_time_picker.dart';

class FormLeaveAdd extends GetResponsiveView<LeaveAddController>{
  FormLeaveAdd({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedType = 'Select type';
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
                    'LEAVE TYPE',
                    style: Get.textTheme.bodyLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  DropdownButtonFormField<String>(
                    value: selectedType,
                    items:
                    ['Select type', 'Asc', 'Desc']
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
                      selectedType = value;
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
        ]),
      ),
    );
  }
}