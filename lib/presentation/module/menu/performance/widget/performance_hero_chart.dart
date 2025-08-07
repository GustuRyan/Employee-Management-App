import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_controller.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../core/style/style.dart';

class PerformanceHeroChart extends GetResponsiveView<PerformanceController> {
  PerformanceHeroChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(paddingXs),
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 4,
              child: Expanded(
                child: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 8,
                  animation: true,
                  percent: 0.75,
                  center: Text(
                    "75 %",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorCaution,
                    ),
                  ),
                  footer: Text("Monthly", style: TextStyle(color: colorGreyDark)),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: colorCaution,
                  backgroundColor: colorBackground,
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 4,
              child: Expanded(
                child: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 8,
                  animation: true,
                  percent: 0.5,
                  center: Text(
                    "50 %",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorSuccess,
                    ),
                  ),
                  footer: Text("Semester", style: TextStyle(color: colorGreyDark)),
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
                  radius: 40.0,
                  lineWidth: 8,
                  animation: true,
                  percent: 0.25,
                  center: Text(
                    "25 %",
                    style: TextStyle(fontWeight: FontWeight.bold, color: colorTheme),
                  ),
                  footer: Text("Annually", style: TextStyle(color: colorGreyDark)),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: colorTheme,
                  backgroundColor: colorBackground,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
