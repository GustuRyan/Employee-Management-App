import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/contract/controller/profile_contract_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class FormProfileContractWidget
    extends GetResponsiveView<ProfileContractController> {
  FormProfileContractWidget({super.key});
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
                            'Resigned Date',
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
                            'Resigned Reason',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Retirement',
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
                            'Description',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
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
                            'Employee Pin',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '******',
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
                            'Contract End',
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
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(marginMd),
          width: Get.width,
          child: ElevatedButton(
            onPressed: () {},
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
