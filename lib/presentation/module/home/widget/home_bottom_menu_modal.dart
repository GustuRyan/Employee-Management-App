import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/home_menu_service_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

import '../../../../core/config/routes.dart';

class HomeBottomMenuModal extends GetResponsiveView<HomeController> {
  HomeBottomMenuModal({super.key});

  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: controller.selectedIndex.value,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,

      onTap: (index) {
        if (index == 2) {
          showModalBottomSheet<void>(
            context: Get.context!,
            backgroundColor: Colors.white,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
            ),
            builder: (BuildContext context) {
              return DraggableScrollableSheet(
                expand: false,
                initialChildSize: 0.5,
                minChildSize: 0.4,
                maxChildSize: 0.9,
                builder: (_, controller) {
                  return Padding(
                    padding: EdgeInsets.all(paddingMd),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Services',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: GridView.builder(
                            controller: controller,
                            itemCount: dataHomeMenuServiceConstant.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 12,
                              childAspectRatio: 0.8,
                            ),
                            itemBuilder: (_, int index) {
                              return InkWell(
                                onTap: () {
                                  Get.toNamed(dataHomeMenuServiceConstant[index].route);
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: colorBackground,
                                      radius: 30,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Image.asset(
                                          dataHomeMenuServiceConstant[index].image,
                                          fit: BoxFit.contain,
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      dataHomeMenuServiceConstant[index].title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        } else {
          List<String> menus = ['', '', '', '', ''];
          controller.changeTab(index);
        }
      },

      items: [
        BottomNavigationBarItem(
          icon:
          _selectedIndex == 0
              ? Icon(Icons.home)
              : Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon:
          _selectedIndex == 1
              ? Icon(Icons.message)
              : Icon(Icons.message_outlined),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AssetUtil().path(path: 'icon/icon-services.png'),
          ),
          label: 'Services',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
          icon:
          _selectedIndex == 4
              ? Icon(Icons.settings)
              : Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
      selectedItemColor: colorButton,
      unselectedItemColor: Colors.grey,
    );
  }
  
}