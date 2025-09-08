import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_menu_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile/controller/profile_controller.dart';

class ProfileMenuWidget extends GetResponsiveView<ProfileController> {
  ProfileMenuWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: marginMd * 2),
        Column(
          children: List.generate(dataProfileMenuConstant.length, (index) {
            var item = dataProfileMenuConstant[index];
            return InkWell(
              onTap: () {
                Get.toNamed(item.route);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: marginMd),
                child: Column(
                  children: [
                    Divider(color: colorGrey.withValues(alpha: 0.5), height: 0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.all(marginMd),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                item.title.toString(),
                                style: Get.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: colorGrey.withValues(alpha: 0.5), height: 0),
                  ],
                ),
              ),
            );
          }),
        ),
        SizedBox(height: marginMd * 3),
      ],
    );
  }
}