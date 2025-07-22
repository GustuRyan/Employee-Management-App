import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class OvertimeFilter extends GetResponsiveView<OvertimeController> {
  OvertimeFilter({super.key});

  var selectedValue = Rx<String?>(null);
  final List<String> items = ['2025-04-01', '2025-04-02', '2025-04-03'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          iconSize: arrowBackSize,
        ),
        title: Text(
          "Filters",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
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
                              'Sort',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,
                                hint: Text(
                                  'Select Short',
                                  style: Get.textTheme.bodyMedium!.merge(
                                    TextStyle(color: colorGrey),
                                  ),
                                ),
                                items:
                                    items.map((String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                onChanged: (String? value) {
                                  selectedValue.value = value;
                                },
                                underline: SizedBox.shrink(),
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
                              'From',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Text(
                              'Select date',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorGrey),
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
                              'TIME',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Text(
                              'Select time',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorGrey),
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
                              'TO ',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Text(
                              'Select date',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorGrey),
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
                              'Time',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Text(
                              'Select time',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorGrey),
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
                              'Status',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,
                                hint: Text(
                                  'Select Status',
                                  style: Get.textTheme.bodyMedium!.merge(
                                    TextStyle(color: colorGrey),
                                  ),
                                ),
                                items:
                                    items.map((String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                onChanged: (String? value) {
                                  selectedValue.value = value;
                                },
                                underline: SizedBox.shrink(),
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
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Reject',
                      style: Get.textTheme.bodyLarge!.merge(
                        TextStyle(color: colorError, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: marginMd),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorButton.withValues(alpha: 0.75),
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadiusXs,
                      ),
                    ),
                    child: Text(
                      'Approve',
                      style: Get.textTheme.titleMedium!.merge(
                        TextStyle(color: colorWhite, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
