import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

class HomeDrawerWidget extends GetResponsiveView<HomeController> {
  HomeDrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(marginSm),
            child: Row(
              children: [
                CircleAvatar(
                  foregroundColor: colorGreyLight,
                  backgroundColor: colorGreyLight,
                  radius: 20,
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
                SizedBox(width: marginSm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Admin',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Get.textTheme.titleLarge!.merge(
                          const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '-',
                        style: Get.textTheme.bodySmall!.merge(
                          const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: marginSm),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    onTap: () {
                      Get.offAllNamed(authRoute);
                    },
                    leading: Icon(
                      Icons.exit_to_app,
                      color: colorGreyDark,
                      size: 20,
                    ),
                    title: Text('Logout', style: Get.textTheme.bodyMedium),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
