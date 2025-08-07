import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/performance/widget/form_performance_detail.dart';
import 'package:hr_360/presentation/widget/customs/custom_form_bottom_nav.dart';

import '../../../../core/style/style.dart';
import 'controller/performance_detail_controller.dart';

class PerformanceDetailScreen extends GetResponsiveView<PerformanceDetailController>{
  PerformanceDetailScreen({super.key});

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
          'Achievement detail',
          style: Get.textTheme.titleLarge?.merge(
            TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
        ),
      ),
      body: FormPerformanceDetail(),
      bottomNavigationBar: CustomFormBottomNav(cancelButton: 'Reject', confirmButton: 'Approve'),
    );
  }
}