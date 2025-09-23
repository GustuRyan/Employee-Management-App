import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_experience_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/experience/controller/profile_experience_controller.dart';
import 'package:hr_360/presentation/widget/items/profile/item_profile_experience.dart';

class FormProfileExperienceWidget
    extends GetResponsiveView<ProfileExperienceController> {
  FormProfileExperienceWidget({super.key});
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
              children: List.generate(dataProfileExperienceConstant.length, (
                index,
              ) {
                var item = dataProfileExperienceConstant[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: ItemProfileExperience(data: item),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
