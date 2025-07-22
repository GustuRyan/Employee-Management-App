import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/card_data_constant.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime_approval.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/overtime_graphics.dart';
import 'package:hr_360/presentation/widget/customs/custom_stacking_hero_section.dart';
// import 'package:hr_360/presentation/module/profile/profile/data.dart';

import '../../../../../../core/config/routes.dart';

class OvertimeApproval extends GetResponsiveView<OvertimeController> {
  OvertimeApproval({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: List.generate(cardDataConstant.length, (index) {
            var item = cardDataConstant[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: marginMd),
              child: CardOvertimeApproval(data: item),
            );
          }),
        ),
      ],
    );
  }
}
