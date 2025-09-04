import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_add_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/form_training_add.dart';
import 'package:hr_360/presentation/widget/customs/custom_form_bottom_nav.dart';

import '../../../../core/style/style.dart';

class TrainingAddScreen extends GetResponsiveView<TrainingAddController> {
  TrainingAddScreen({super.key});

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
          'Add training',
          style: Get.textTheme.titleLarge?.merge(
            TextStyle(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: arrowBackSize,
          ),
        ],
        scrolledUnderElevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: Container(
            color: colorBackground,
            height: 1,
          ),
        ),
      ),
      body: FormTrainingAdd(),
      bottomNavigationBar: CustomFormBottomNav(
        cancelButton: 'Cancel',
        confirmButton: 'Add',
      ),
    );
  }
}
