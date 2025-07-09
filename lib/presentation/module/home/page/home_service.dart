import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/home_menu_service_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeServicePage extends GetResponsiveView<HomeController> {
  HomeServicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ResponsiveGridRow(
        children: List.generate(dataHomeMenuServiceConstant.length, (index) {
          var item = dataHomeMenuServiceConstant[index];
          return ResponsiveGridCol(
            xs: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(marginSm),
                child: Column(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: colorGreyLight,
                        borderRadius: borderRadiusXl,
                      ),
                      child: Container(
                        margin: EdgeInsets.all(marginSm),
                        child: Center(child: Image.asset(item.image)),
                      ),
                    ),
                    SizedBox(height: marginXs),
                    Text(
                      item.title.toString(),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Get.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
