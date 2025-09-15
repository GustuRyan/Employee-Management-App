import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/company/controller/profile_company_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class FormProfileCompanyWidget
    extends GetResponsiveView<ProfileCompanyController> {
  FormProfileCompanyWidget({super.key});
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
                            'Company',
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
                            'Division',
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
                            'Section',
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
                            'Department',
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
                            'Category',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Contract',
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
                            'Level',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Staff',
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
                            'Position',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Staff',
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
              Get.toNamed(profileCompanyUpdateRoute);
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
