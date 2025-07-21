import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_create_controller.dart';
import 'package:hr_360/presentation/module/menu/leave/widget/form_leave_create.dart';

import '../../../../core/style/style.dart';
import '../../../widget/customs/custom_form_bottom_nav.dart';

class LeaveCreateScreen extends GetResponsiveView<LeaveCreateController>{
  LeaveCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: arrowBackSize,
        ),
        title: Text(
          "Create new leave",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
        actionsPadding: EdgeInsets.only(right: 5),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
            iconSize: arrowBackSize,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune_rounded),
            iconSize: arrowBackSize,
          ),
        ],
      ),
      body: FormLeaveCreate(),
      bottomNavigationBar: CustomFormBottomNav(
        cancelButton: 'Cancel',
        confirmButton: 'Create',
        event: () => Get.toNamed(leaveDetailListRoute),
      ),
    );
  }
}