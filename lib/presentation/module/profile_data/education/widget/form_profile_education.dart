import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_education_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/education/controller/profile_education_controller.dart';
import 'package:hr_360/presentation/widget/items/profile/item_profile_education.dart';

class FormProfileEducationWidget
    extends GetResponsiveView<ProfileEducationController> {
  FormProfileEducationWidget({super.key});
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
              children: List.generate(dataProfileEducationConstant.length, (
                index,
              ) {
                var item = dataProfileEducationConstant[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: ItemProfileEducation(data: item),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
