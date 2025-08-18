import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
import 'package:hr_360/presentation/widget/customs/custom_stacking_hero_section.dart';
// import 'package:hr_360/presentation/module/profile/profile/data.dart';

import '../../../../../../core/config/routes.dart';

class TrainingHistory extends GetResponsiveView<TrainingController> {
  TrainingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children:
              cardDataTreningConstant
                  .where(
                    (item) =>
                        item.status.toString().toLowerCase() == 'completed',
                  )
                  .map(
                    (item) => Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: CardTraining(data: item),
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }
}
