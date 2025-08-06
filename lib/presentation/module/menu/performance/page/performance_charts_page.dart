import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_controller.dart';
import 'package:hr_360/presentation/module/menu/performance/widget/performance_rank_stats.dart';
import 'package:hr_360/presentation/module/menu/performance/widget/performance_stats_bar.dart';

import '../../../../../core/style/style.dart';
import '../../../../widget/customs/custom_stacking_hero_section.dart';
import '../widget/performance_hero_chart.dart';

class PerformanceChartsPage extends GetResponsiveView<PerformanceController> {
  PerformanceChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StackingHeroSection(content: PerformanceHeroChart()),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingMd),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Text(
                'Performance Detail',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: paddingMd),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: PerformanceStatsBar(),
              ),
              Text(
                'My Rank',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              PerformanceRankStats(type: 'my rank'),
              Text(
                'Department Rank',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              PerformanceRankStats(type: 'other'),
              Text(
                'Division Rank',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              PerformanceRankStats(type: 'other'),
              SizedBox(height: 25),
            ],
          ),
        ),
      ],
    );
  }
}
