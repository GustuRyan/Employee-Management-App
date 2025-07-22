import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class OvertimeAddTim extends GetResponsiveView<OvertimeController> {
  OvertimeAddTim({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          iconSize: arrowBackSize,
        ),
        title: Text(
          "Add detail overtime",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: arrowBackSize,
          ),
        ],
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
                              'TITLE',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Obx(
                              () => DropdownButton<String>(
                                value: controller.selectedValue.value,
                                hint: Text(
                                  'Select type',
                                  style: Get.textTheme.bodyMedium!.merge(
                                    TextStyle(color: colorGrey),
                                  ),
                                ),
                                items:
                                    controller.items.map((String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                onChanged: (String? value) {
                                  controller.selectedValue.value = value;
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
                              'FROM',
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
                              'TO',
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
                              'TIME ',
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
                      xs: 12,
                      child: Container(
                        margin: EdgeInsets.all(marginXs),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'REST',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Text(
                              'Hours',
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
                              'Description',
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
                    ResponsiveGridCol(
                      xs: 12,
                      child: Container(
                        margin: EdgeInsets.all(marginXs),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'EMPLOYEE',
                              style: Get.textTheme.bodyMedium!.merge(
                                TextStyle(color: colorBlack),
                              ),
                            ),
                            Wrap(
                               direction: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.showPersonPicker(context);
                                  },
                                  child: Image.asset(
                                    AssetUtil().path(
                                      path: 'example/example-add-tim.png',
                                    ),
                                    width: 24,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Obx(() {
                                  return Wrap(
                                    direction: Axis.horizontal,
                                    children: [
                                      if (controller.selectedPeople.isEmpty)
                                        SizedBox.shrink(),
                                      for (var person
                                          in controller.selectedPeople)
                                        Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Chip(
                                              label: Text(person),
                                              deleteIcon: Icon(Icons.cancel),
                                              onDeleted: () {
                                                controller.selectedPeople
                                                    .remove(person);
                                              },
                                            ),
                                          ),
                                        ),
                                    ],
                                  );
                                }),
                              ],
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
