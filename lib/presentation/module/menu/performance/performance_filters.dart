import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/widget/customs/custom_date_picker.dart';
import 'package:hr_360/presentation/widget/customs/custom_form_bottom_nav.dart';
import 'package:hr_360/presentation/widget/customs/custom_time_picker.dart';
import 'package:hr_360/presentation/widget/form/form_filters.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../controller/filter_controller.dart';

class PerformanceFiltersScreen
    extends GetResponsiveView<FilterController> {
  PerformanceFiltersScreen({super.key});

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
