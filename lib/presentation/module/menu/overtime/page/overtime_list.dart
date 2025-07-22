import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/card_data_constant.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime_list.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime_tim.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/overtime_graphics.dart';
import 'package:hr_360/presentation/widget/customs/custom_stacking_hero_section.dart';
// import 'package:hr_360/presentation/module/profile/profile/data.dart';

import '../../../../../../core/config/routes.dart';

class OvertimeList extends GetResponsiveView<OvertimeController> {
  OvertimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: arrowBackSize,
        ),
        title: Text(
          "Overtime list",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
            iconSize: arrowBackSize,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune_rounded),
            iconSize: arrowBackSize,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: List.generate(cardDataConstant.length, (index) {
                var item = cardDataConstant[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: CardOvertimeList(data: item),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
