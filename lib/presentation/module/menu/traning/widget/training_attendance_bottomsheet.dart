import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_attendance_controller.dart';
import 'package:hr_360/presentation/widget/customs/custom_form_bottom_nav.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/style/style.dart';

class TrainingAttendanceBottomsheet
    extends GetResponsiveView<TrainingAttendanceController> {
  TrainingAttendanceBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(paddingMd),
                  child: Text(
                    "Add attendance result",
                    style: Get.textTheme.titleLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 20.sp),
                    ),
                  ),
                ),
                Divider(color: colorBackground),
                Padding(
                  padding: EdgeInsets.all(paddingMd),
                  child: Column(
                    children: [
                      ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            xs: 4,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Duration',labelStyle: TextStyle(color: colorGrey),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: colorGreyDark,
                                    width: 2,
                                  ),
                                ),
                              ),
                              style: TextStyle(color: colorGreyDark),
                              onChanged: (value) {},
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 2,
                            child: SizedBox(
                              height: 48,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text('.Min')],
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 4,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Score',
                                labelStyle: TextStyle(color: colorGrey),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: colorGrey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: colorGreyDark,
                                    width: 2,
                                  ),
                                ),
                              ),
                              style: TextStyle(color: colorGreyDark),
                              onChanged: (value) {},
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 2,
                            child: SizedBox(
                              height: 48,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text('Pts')],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      TextField(
                        maxLines: 6,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          labelText: 'Duration',
                          labelStyle: TextStyle(color: colorGrey),
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: colorGreyDark,
                              width: 2,
                            ),
                          ),
                        ),
                        style: TextStyle(color: colorGreyDark),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                CustomFormBottomNav(cancelButton: 'Cancel', confirmButton: 'Add')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
