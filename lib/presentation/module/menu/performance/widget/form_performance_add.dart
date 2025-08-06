import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_add_controller.dart';
import 'package:hr_360/presentation/widget/customs/custom_date_picker.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/style/style.dart';

class FormPerformanceAdd extends GetResponsiveView<PerformanceAddController> {
  FormPerformanceAdd({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedItem = 'Select KPI';
    String? selectedAcvDate = 'Select date';
    String? selectedAcvType = 'Select type';
    String? note = 'Type note';
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: paddingMd),
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KPI',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                    DropdownButtonFormField<String>(
                      value: selectedItem,
                      items:
                          ['Select KPI', 'Asc', 'Desc']
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
                        selectedItem = value;
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
                      'ACHIEVEMENT DATE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                    SizedBox(height: 5),
                    DatePicker(selectedDate: controller.selectedDate)
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
                      'ACHIEVEMENT TYPE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                    DropdownButtonFormField<String>(
                      value: selectedAcvType,
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
                        selectedItem = value;
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
                      'NOTE',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Type note',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: TextStyle(
                        color: colorGrey, fontSize: 16.sp
                      ),
                      onChanged: (value) {
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
