import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/work_assign/controller/profile_work_assign_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class FormProfileWorkAssignWidget
    extends GetResponsiveView<ProfileWorkAssignController> {
  FormProfileWorkAssignWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: marginXs),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs: 12,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W. A. Company',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Dimata Solution',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W. A. Division',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Developer',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W. A. Section',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Developer',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W. A. Department',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Mobile Developer',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W. A. Position',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Branch Manager',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W. A. Provider',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'ABC',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Commencing Date',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '01-01-2025',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Probation End Date',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '01-01-2025',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Locker',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Male',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Locker No',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '0001',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(marginMd),
          width: Get.width,
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(profileWorkAssignUpdateRoute);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(marginXs),
              backgroundColor: colorWhite,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadiusXs,
                side: BorderSide(color: colorButton, width: 0.4),
              ),
            ),
            child: Text(
              'Edit',
              style: Get.textTheme.bodyMedium!.merge(
                TextStyle(color: colorButton, fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
