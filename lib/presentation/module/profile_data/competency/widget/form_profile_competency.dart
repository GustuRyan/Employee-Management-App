import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_competency_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/competency/controller/profile_competency_controller.dart';
import 'package:hr_360/presentation/widget/items/profile/item_profile_competency.dart';

class FormProfileCompetencyWidget
    extends GetResponsiveView<ProfileCompetencyController> {
  FormProfileCompetencyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(dataProfileCompetencyConstant.length, (
                index,
              ) {
                var item = dataProfileCompetencyConstant[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: ItemProfileCompetency(data: item),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
