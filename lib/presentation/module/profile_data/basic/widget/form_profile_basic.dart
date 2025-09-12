import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/basic/controller/profile_basic_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class FormProfileBasicWidget extends GetResponsiveView<ProfileBasicController> {
  FormProfileBasicWidget({super.key});
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
                            'Payroll',
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
                  ResponsiveGridCol(
                    xs: 12,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Full Name',
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
                    xs: 6,
                    child: Container(
                      margin: EdgeInsets.all(marginXs),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gender',
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
                            'Date of Birth',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '29-06-1994',
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
                            'Phone Number',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '085739875660',
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
                            'Place of Birth',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Denpasar',
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
                            'Marital Status',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Not Married',
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
                            'Nationality',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Indonesia',
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
                            'Address',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Jl Tukad Yeh Ho 36/2 Jadi Anyar, Desa Br. Anyar, Kec. Kediri, Kab. Tabanan, Bali, 82123',
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
                            'Emergency Address',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Jl Tukad Yeh Ho 36/2 Jadi Anyar, Desa Br. Anyar, Kec. Kediri, Kab. Tabanan, Bali, 82123',
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
                            'Emergency Contact',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'Yaniek Wijayanti',
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
                            'Emergency Phone Number',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            '085739875660',
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
                            'Email',
                            style: Get.textTheme.bodyMedium!.merge(
                              TextStyle(color: colorGrey),
                            ),
                          ),
                          Text(
                            'rizky.ananda.ds@gmail.com',
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
              Get.toNamed(profileBasicUpdateRoute);
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
