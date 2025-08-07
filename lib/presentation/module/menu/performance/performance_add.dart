import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_add_controller.dart';
import 'package:hr_360/presentation/module/menu/performance/widget/form_performance_add.dart';
import 'package:hr_360/presentation/widget/customs/custom_form_bottom_nav.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../core/style/style.dart';

class PerformanceAddScreen extends GetResponsiveView<PerformanceAddController> {
  PerformanceAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close),
          iconSize: arrowBackSize,
        ),
        centerTitle: true,
        title: Text(
          'Add achievement',
          style: Get.textTheme.titleLarge?.merge(
            TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: arrowBackSize)],
      ),
      body: FormPerformanceAdd(),
      bottomNavigationBar: CustomFormBottomNav(
        cancelButton: 'Cancel',
        confirmButton: 'Save',
      ),
    );
  }
}
