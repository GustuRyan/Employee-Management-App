import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

class HomeSettingsPage extends GetResponsiveView<HomeController> {
  HomeSettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: marginXs),
            child: ListTile(
              dense: true,
              onTap: () => Get.offAllNamed(authRoute),
              title: Text('Sign Out', style: Get.textTheme.bodyMedium),
              trailing: Icon(Icons.exit_to_app, color: colorBlack),
            ),
          ),
        ],
      ),
    );
  }
}
