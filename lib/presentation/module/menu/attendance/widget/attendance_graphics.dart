import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/style/style.dart';
import '../controller/attendance_controller.dart';

class AttendanceGraphics extends GetResponsiveView<AttendanceController> {
  AttendanceGraphics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(paddingSm),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: 52.0,
              lineWidth: 10.0,
              animation: true,
              percent: 0.72,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '22',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: colorTheme,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Days',
                        style: TextStyle(fontSize: 12, color: colorTheme),
                      ),
                    ],
                  ),
                  Text(
                    'of 31 Days',
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
            SizedBox(width: 10),
            Expanded(
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs: 4,
                    child: Expanded(
                      child: CircularPercentIndicator(
                        radius: 24.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 0.82,
                        center: Text(
                          "20",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorSuccess,
                          ),
                        ),
                        footer: Text(
                          "Present",
                          style: TextStyle(color: colorGreyDark),
                          overflow: TextOverflow.ellipsis,
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: colorSuccess,
                        backgroundColor: colorBackground,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 4,
                    child: Expanded(
                      child: CircularPercentIndicator(
                              radius: 24.0,
                              lineWidth: 5.0,
                              animation: true,
                              percent: 0.1,
                              center: Text(
                                "2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorWarning,
                                ),
                              ),
                              footer: Text(
                                "Late",
                                style: TextStyle(color: colorGreyDark),
                                overflow: TextOverflow.ellipsis,
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: colorWarning,
                              backgroundColor: colorBackground,
                            ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 4,
                    child: Expanded(
                      child: CircularPercentIndicator(
                        radius: 24.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 0.1,
                        center: Text(
                          "2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorError,
                          ),
                        ),
                        footer: Text(
                          "Absent",
                          style: TextStyle(color: colorGreyDark),
                          overflow: TextOverflow.ellipsis,
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: colorError,
                        backgroundColor: colorBackground,
                      ),
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
