import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../../core/style/style.dart';

class OvertimeGraphics extends GetResponsiveView<OvertimeController> {
  OvertimeGraphics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(paddingMd),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: 50.0,
              lineWidth: 12.0,
              animation: true,
              percent: 0.72,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '50',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: colorTheme,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'of 120',
                        style: TextStyle(fontSize: 12, color: colorTheme),
                      ),
                    ],
                  ),
                  Text(
                    'Hours',
                    style: TextStyle(fontSize: 12, color: colorGreyDark),
                  ),
                ],
              ),

              circularStrokeCap: CircularStrokeCap.round,
              linearGradient: LinearGradient(
                colors: [Color(0xFF2d9cdb), Color(0xFF3459b8)],
              ),
              backgroundColor: colorBackground,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CircularPercentIndicator(
                      radius: 24.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 0.82,
                      center: Text(
                        "5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorSuccess,
                        ),
                      ),
                      footer: Text(
                        "Active",
                        style: TextStyle(color: colorGreyDark),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: colorSuccess,
                      backgroundColor: colorBackground,
                    ),
                  ),
                  Expanded(
                    child: CircularPercentIndicator(
                      radius: 24.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 0.1,
                      center: Text(
                        "10",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorWarning,
                        ),
                      ),
                      footer: Text(
                        "Upcoming",
                        style: TextStyle(color: colorGreyDark),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: colorWarning,
                      backgroundColor: colorBackground,
                    ),
                  ),
                  Expanded(
                    child: CircularPercentIndicator(
                      radius: 24.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 0.1,
                      center: Text(
                        "5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorError,
                        ),
                      ),
                      footer: Text(
                        "Pending",
                        style: TextStyle(color: colorGreyDark),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: colorError,
                      backgroundColor: colorBackground,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
