import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class OvertimeAdd extends GetResponsiveView<OvertimeController> {
  OvertimeAdd({super.key});
  var selectedValue = Rx<String?>(null);
  final List<String> items = ['2025-04-01', '2025-04-02', '2025-04-03'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          iconSize: arrowBackSize,
        ),
        title: Text(
          "Add overtime",
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
                              'Req date',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Text(
                              'Select type',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorGrey),
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
                              'Company',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,

                                hint: Text(
                                  'Select company',
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
                              'departement',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,
                                hint: Text(
                                  'Select departmen',
                                  style: Get.textTheme.bodySmall!.merge(
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
                              'division',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,
                                hint: Text(
                                  'Select division',
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
                              'cost center ',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,
                                hint: Text(
                                  'Select cost center',
                                  style: Get.textTheme.bodySmall!.merge(
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
                              'Allowance',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,
                                hint: Text(
                                  'Select allowance',
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
                              'Doc. status',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: selectedValue.value,
                                hint: Text(
                                  'Select status',
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
                      xs: 12,
                      child: Container(
                        margin: EdgeInsets.all(marginXs),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ov. objective',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Type description',
                                hintStyle: Get.textTheme.bodyMedium!.merge(
                                  TextStyle(color: colorGrey),
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 0,
                                  vertical: 8,
                                ),
                              ),
                              maxLines: 1,
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
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
                      'Add',
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
