import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/profile/controller/profile_controller.dart';

class ProfileHeaderWidget extends GetResponsiveView<ProfileController> {
  ProfileHeaderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: 160,
          decoration: BoxDecoration(
            color: colorTheme,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(marginSm),
              bottomRight: Radius.circular(marginSm),
            ),
            image: DecorationImage(
              image: AssetImage(
                AssetUtil().path(path: 'background/background.png'),
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: marginMd),
                child: CircleAvatar(
                  foregroundColor: colorGreyLight,
                  backgroundColor: colorGreyLight,
                  radius: 48,
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorGreyLight,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          AssetUtil().path(path: 'icon/icon-profile.png'),
                        ),
                        filterQuality: FilterQuality.low,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: marginMd),
            Container(
              margin: EdgeInsets.symmetric(horizontal: marginMd),
              child: Text(
                'Administrator',
                style: Get.textTheme.bodyMedium!.merge(
                  TextStyle(color: colorGreyDark),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: marginMd),
              child: Text(
                'Rizky Ananda Dwi Saputra',
                style: Get.textTheme.titleMedium!.merge(
                  TextStyle(color: colorBlack),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}