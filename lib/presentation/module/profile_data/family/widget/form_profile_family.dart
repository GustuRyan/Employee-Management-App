import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/family/controller/profile_family_controller.dart';
import 'package:hr_360/presentation/widget/items/profile/item_profile_family.dart';

class FormProfileFamilyWidget
    extends GetResponsiveView<ProfileFamilyController> {
  FormProfileFamilyWidget({super.key});
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
              children: List.generate(dataProfileFamilyConstant.length, (
                index,
              ) {
                var item = dataProfileFamilyConstant[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: ItemProfileFamily(data: item),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
