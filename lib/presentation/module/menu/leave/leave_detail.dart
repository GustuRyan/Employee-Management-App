import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_detail_controller.dart';
import 'package:hr_360/presentation/module/menu/leave/widget/form_leave_detail.dart';

import '../../../../core/style/style.dart';

class LeaveDetailScreen extends GetResponsiveView<LeaveDetailController>{
  LeaveDetailScreen({super.key});

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
          "Leave detail",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
        actionsPadding: EdgeInsets.only(right: 5),
      ),
      body: FormLeaveDetail(),
    );
  }
}