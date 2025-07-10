import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

class HomeHeaderWidget extends GetResponsiveView<HomeController> {
  HomeHeaderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    if (controller.currentNavbar.value == 1) {
      return Container();
    } else if (controller.currentNavbar.value == 2) {
      return AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: null,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          'Services',
          style: Get.textTheme.titleMedium!.merge(
            TextStyle(
              color: colorBlack,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: colorPrimary,
      );
    } else if (controller.currentNavbar.value == 3) {
      return Container();
    } else if (controller.currentNavbar.value == 4) {
      return AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: null,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          'Settings',
          style: Get.textTheme.titleMedium!.merge(
            TextStyle(
              color: colorBlack,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: colorPrimary,
      );
    } else {
      return AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: null,
        centerTitle: true,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: () {
            Get.toNamed(profileRoute);
          },
          child: Container(
            margin: EdgeInsets.only(
              left: marginMd,
              top: marginXs,
              bottom: marginXs,
            ),
            child: CircleAvatar(
              foregroundColor: colorGreyLight,
              backgroundColor: colorGreyLight,
              radius: 24.sp,
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
        title: Text(
          'Home',
          style: Get.textTheme.titleMedium!.merge(
            TextStyle(
              color: colorWhite,
              fontWeight: FontWeight.w800,
              fontSize: 20.sp,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                right: marginMd,
                top: marginXs,
                bottom: marginXs,
              ),
              child: Icon(
                Icons.notifications_outlined,
                color: colorWhite,
                size: 24.sp,
              ),
            ),
          ),
        ],
        backgroundColor: colorTheme,
      );
    }
  }
}
