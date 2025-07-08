import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/core/utils/date_util.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

class HomeDashboardPage extends GetResponsiveView<HomeController> {
  HomeDashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                height: 180,
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
                  SizedBox(height: marginXs),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: Row(
                        children: [
                          Image.asset(
                            AssetUtil().path(path: 'icon/icon-weather.png'),
                            width: 24,
                          ),
                          SizedBox(width: 7.5),
                          Text(
                            DateUtil.indonesianDateTime(
                              date: DateTime.now().toString(),
                            ),
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorWhite),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: marginMd),
                  Container(
                    width: Get.width,
                    height: 240,
                    margin: EdgeInsets.symmetric(horizontal: marginMd),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: borderRadiusDefault,
                      boxShadow: [
                        BoxShadow(
                          color: colorShadow.withValues(alpha: 0.25),
                          blurRadius: 15,
                          spreadRadius: -2,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.all(marginMd),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.calendar_month,
                                  color: colorButton,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Today Schedule',
                                  textAlign: TextAlign.center,
                                  style: Get.textTheme.titleSmall,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(Icons.search, color: colorGreyDark),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
