import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/bank/controller/profile_bank_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class FormProfileBankWidget
    extends GetResponsiveView<ProfileBankController> {
  FormProfileBankWidget({super.key});
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
                            'Bank Name',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'BNI 46',
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
                            'Account No',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '0123456789',
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
                            'Account Name',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Rizky Ananda Dwi Saputra',
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
                            'Bank Branch',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Tabanan',
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
                            'Bank Code',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '1234567890',
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
