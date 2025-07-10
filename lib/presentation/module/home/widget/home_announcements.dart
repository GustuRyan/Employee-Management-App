import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/home/controller/home_controller.dart';

import '../../../../core/config/routes.dart';

class HomeAnnouncements extends GetResponsiveView<HomeController> {
  final Widget content;

  HomeAnnouncements({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: colorButton,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(paddingSm),
            child: Row(
              children: [
                Image.asset(
                  AssetUtil().path(
                    path:
                    'example/example-announcement.png',
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  'Announcements',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 440,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return content;
              },
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
