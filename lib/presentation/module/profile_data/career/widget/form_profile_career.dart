import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_career_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/career/controller/profile_career_controller.dart';
import 'package:hr_360/presentation/widget/items/profile/item_profile_career.dart';

class FormProfileCareerWidget
    extends GetResponsiveView<ProfileCareerController> {
  FormProfileCareerWidget({super.key});
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
              children: List.generate(dataProfileCareerConstant.length, (
                index,
              ) {
                var item = dataProfileCareerConstant[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: ItemProfileCareer(data: item),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
