import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/card_data_constant.dart';
import 'package:hr_360/core/constant/card_data_trening_constant.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/overtime_graphics.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/card_training.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/training_graphics.dart';
import 'package:hr_360/presentation/widget/customs/custom_stacking_hero_section.dart';
// import 'package:hr_360/presentation/module/profile/profile/data.dart';

class TrainigActive extends GetResponsiveView<TrainingController> {
  TrainigActive({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.asset(AssetUtil().path(path: 'example/example-pertama.png')),
            Positioned(
              // bottom: -55.h,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: paddingLg,
                  // vertical: 5.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AssetUtil().path(
                            path: 'icon/icon-sun-behind-cloud.png',
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Sunday, 06 April 2025",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            StackingHeroSection(content: TrainingGraphics()),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(paddingLg),
              child: Row(
                children: [
                  Text("Today Training ", style: TextStyle(fontSize: 18.sp)),
                  SizedBox(width: 8),
                  if (cardDataTreningConstant.isNotEmpty)
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${cardDataTreningConstant.length}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              height: 440,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(cardDataTreningConstant.length, (
                    index,
                  ) {
                    var item = cardDataTreningConstant[index];
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: CardTraining(data: item),
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(paddingLg),
              child: Row(
                children: [
                  Text("Upcoming Training", style: TextStyle(fontSize: 18.sp)),
                  SizedBox(width: 8),
                  if (cardDataTreningConstant.isNotEmpty)
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${cardDataTreningConstant.length}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              height: 440,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(cardDataTreningConstant.length, (
                    index,
                  ) {
                    var item = cardDataTreningConstant[index];
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: CardTraining(data: item),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
