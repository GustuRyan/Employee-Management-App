import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import '../controller/leave_controller.dart';
import '../data/leave_stats_data.dart';

class LeaveStatsBar extends GetResponsiveView<LeaveController> {
  LeaveStatsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(listLeaveStats.length, (index) {
        controller.remainingHourConverter(index);
        return Padding(
          padding: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      listLeaveStats[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Remaining ',
                            style: TextStyle(color: colorGrey, fontSize: 14.sp),
                          ),
                          TextSpan(
                            text:
                                controller.isRemainingHour
                                    ? '${listLeaveStats[index].remaining.toInt()} D ${controller.remainingHour.toInt()} H'
                                    : '${listLeaveStats[index].remaining.toInt()} D',
                            style: TextStyle(
                              color: colorTheme,
                              fontWeight: FontWeight.bold,
                                fontSize: 14.sp
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total ',
                          style: TextStyle(color: colorGrey, fontSize: 14.sp),
                        ),
                        TextSpan(
                          text:
                              controller.isTotalHour
                                  ? '${listLeaveStats[index].total.toInt()} D ${controller.totalHour.toInt()} H'
                                  : '${listLeaveStats[index].total.toInt()} D',
                          style: TextStyle(
                            color: colorTheme,
                            fontWeight: FontWeight.bold, fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 7,
                child: LinearProgressIndicator(
                  semanticsLabel: 'Linear progress indicator',
                  value:
                      listLeaveStats[index].remaining /
                      listLeaveStats[index].total,
                  color: colorTheme,
                  backgroundColor: colorBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      }),
    );
  }
}
