import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/basic/controller/profile_basic_update_controller.dart';

class FormProfileBasicUpdateWidget
    extends GetResponsiveView<ProfileBasicUpdateController> {
  FormProfileBasicUpdateWidget({super.key});
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
              child: Container(),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(marginMd),
          width: Get.width,
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(marginXs),
                    backgroundColor: colorWhite,
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: borderRadiusXs,
                      side: BorderSide(color: colorError, width: 0.4),
                    ),
                  ),
                  child: Text(
                    'Cancel',
                    style: Get.textTheme.bodyMedium!.merge(
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
                    shape: RoundedRectangleBorder(borderRadius: borderRadiusXs),
                  ),
                  child: Text(
                    'Save',
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
    );
  }
}
