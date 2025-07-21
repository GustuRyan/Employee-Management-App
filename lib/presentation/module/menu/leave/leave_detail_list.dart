import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/presentation/module/menu/leave/widget/leave_card.dart';

import '../../../../core/style/style.dart';
import 'controller/leave_detail_list_controller.dart';

class LeaveDetailListScreen
    extends GetResponsiveView<LeaveDetailListController> {
  LeaveDetailListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Leave detail list",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
        actionsPadding: EdgeInsets.only(right: 5),
        actions: [
          IconButton(onPressed: () => Get.toNamed(leaveAddRoute), icon: Icon(Icons.add, size: arrowBackSize,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(paddingMd),
          child: Column(
            children: List.generate(4, (index) {
              return LeaveCard();
            }),
          ),
        ),
      ),
    );
  }
}
