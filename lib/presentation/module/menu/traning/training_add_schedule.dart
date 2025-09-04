import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_add_schedule_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/form_training_add.dart';

import '../../../../core/style/style.dart';
import '../../../widget/customs/custom_form_bottom_nav.dart';

class TrainingAddScheduleScreen extends GetResponsiveView<TrainingAddScheduleController>{
  TrainingAddScheduleScreen({super.key});

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
          'Add training plan',
          style: Get.textTheme.titleLarge?.merge(
            TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
        ),
        scrolledUnderElevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: Container(
            color: colorBackground,
            height: 1,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: arrowBackSize,
          ),
        ],
      ),
      body: FormTrainingAdd(),
      bottomNavigationBar: CustomFormBottomNav(
        cancelButton: 'Cancel',
        confirmButton: 'Add',
      ),
    );
  }
}