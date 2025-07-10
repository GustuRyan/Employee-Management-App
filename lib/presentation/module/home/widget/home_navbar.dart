import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

class HomeNavbarWidget extends GetResponsiveView<HomeController> {
  HomeNavbarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: colorWhite,
      iconSize: 24,
      selectedItemColor: colorButton,
      unselectedItemColor: colorGreyDark,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        color: colorSuccess,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        color: colorGreyDark,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            controller.currentNavbar.value == 0
                ? Icons.home
                : Icons.home_outlined,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            controller.currentNavbar.value == 1
                ? Icons.message
                : Icons.message_outlined,
          ),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              AssetUtil().path(path: 'icon/icon-services.png'),
              fit: BoxFit.contain,
            ),
          ),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            controller.currentNavbar.value == 3
                ? Icons.search
                : Icons.search_outlined,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            controller.currentNavbar.value == 4
                ? Icons.settings
                : Icons.settings_outlined,
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: controller.currentNavbar.value,
      onTap: (index) {
        controller.currentNavbar.value = index;
      },
    );
  }
}
