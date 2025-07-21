import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import '../controller/leave_controller.dart';

class LeaveCard extends GetResponsiveView<LeaveController> {
  LeaveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      AssetUtil().path(path: 'icon/icon-leave.png'),
                      height: 22,
                    ),
                    SizedBox(width: 10),
                    Text('11D3', style: TextStyle(fontSize: 16)),
                    SizedBox(width: 10),
                    Text(
                      'Leave',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        '07 - 04 - 2025  17 : 58',
                        style: TextStyle(fontSize: 10, color: colorGreyDark),
                      ),
                    ),
                    GestureDetector(onTap: () {}, child: Icon(Icons.more_vert)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.calendar_today_rounded, color: colorGreyDark),
              SizedBox(width: 10),
              Text(
                '15 April 2025  to  22 April 2025',
                style: TextStyle(
                  color: colorGreyDark,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.calendar_month, color: colorGreyDark),
                    SizedBox(width: 10),
                    Text(
                      'Vacation',
                      style: TextStyle(
                        color: colorGreyDark,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '3 Days',
                style: TextStyle(
                  color: colorGreyDark,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Approved',
                      style: TextStyle(
                        color: colorTheme,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // SizedBox(height: 10),
        ],
      ),
    );
  }
}
