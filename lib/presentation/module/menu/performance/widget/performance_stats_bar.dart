import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_controller.dart';

import '../data/performance_stats_data.dart';

class PerformanceStatsBar extends GetResponsiveView<PerformanceController> {
  PerformanceStatsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingSm),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: List.generate(listPerformanceStats.length, (index) {
          return Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listPerformanceStats[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                listPerformanceStats[index].remaining
                                    .toString(),
                            style: TextStyle(
                              color: colorTheme,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  of  ${listPerformanceStats[index].total.toString()}',
                            style: TextStyle(color: colorGrey),
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
                        listPerformanceStats[index].remaining /
                        listPerformanceStats[index].total,
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
      ),
    );
  }
}
