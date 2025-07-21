import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/widget/form_leave_add.dart';
import 'package:hr_360/presentation/widget/customs/custom_form_bottom_nav.dart';

import '../../../../core/style/style.dart';
import 'controller/leave_add_controller.dart';

class LeaveAddScreen extends GetResponsiveView<LeaveAddController> {
  LeaveAddScreen({super.key});

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
          "Add leave",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
        actionsPadding: EdgeInsets.only(right: 5),
      ),
      body: FormLeaveAdd(),
      bottomNavigationBar: CustomFormBottomNav(
        cancelButton: 'Cancel',
        confirmButton: 'Add',
      ),
    );
  }
}
