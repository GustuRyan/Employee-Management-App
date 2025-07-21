import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/style/style.dart';
import '../../../controller/filter_controller.dart';
import '../../../widget/customs/custom_form_bottom_nav.dart';
import '../../../widget/form/form_filters.dart';
import 'controller/leave_filter_controller.dart';

class LeaveFilterScreen extends GetResponsiveView<LeaveFilterController>{
  LeaveFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FilterController());
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
            'Filters',
            style: Get.textTheme.titleLarge?.merge(
              TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
            ),
          ),
        ),
        body: FormFilter(),
        bottomNavigationBar: CustomFormBottomNav(cancelButton: 'Cancel', confirmButton: 'Apply')
    );
  }
}