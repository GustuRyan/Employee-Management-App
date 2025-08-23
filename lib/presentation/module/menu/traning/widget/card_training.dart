import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/date_util.dart';
import 'package:hr_360/data/model/card/card_model.dart';
import 'package:hr_360/data/model/card/card_trening_model.dart';
import 'package:hr_360/data/model/profile/family/profile_family_model.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_ditail.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/page/training_ditail.dart';
import 'package:hr_360/presentation/module/profile_data/family/controller/profile_family_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CardTraining extends GetResponsiveView<TrainingController> {
  CardTraining({super.key, this.data});

  final CardTreningModel? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginXs),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: borderRadiusXs,
        boxShadow: [
          BoxShadow(
            color: colorShadow.withValues(alpha: 0.25),
            blurRadius: 15,
            spreadRadius: -2,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TrainingDitail(data: data!),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(marginMd),
          child: Column(
            children: [
              ResponsiveGridRow(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ResponsiveGridCol(
                    xs: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: marginSm),

                      height: 125,
                      decoration: BoxDecoration(
                        color: controller.getStatusColor(
                          data!.status.toString(),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 11,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                data!.tittle.toString(),
                                style: Get.textTheme.titleMedium,
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          data!.date.toString(),
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          data!.time.toString(),
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.more_vert,
                                    color: colorGreyDark,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          data!.address.toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Get.textTheme.titleSmall!.merge(
                            TextStyle(color: colorGreyDark),
                          ),
                        ),
                        SizedBox(height: 2.5),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: colorGrey,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Row(
                              children: [
                                Text(
                                  data!.startwork.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: Get.textTheme.bodySmall!.merge(
                                    TextStyle(color: colorGrey),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.access_time_rounded,
                                  color: colorGrey,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  data!.timework.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: Get.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: marginXs),
                        Wrap(
                      spacing: 10,
                      runSpacing: 10,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: colorGreyLight,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "JavaScript",
                                style: Get.textTheme.bodySmall!,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: colorGreyLight,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Database",
                                style: Get.textTheme.bodySmall!,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: colorGreyLight,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "TypeScript",
                                style: Get.textTheme.bodySmall!,
                              ),
                            ),

                            Text("2 more"),
                            Text(
                              data!.status.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Get.textTheme.bodySmall!.merge(
                                TextStyle(
                                  color: controller.getStatusColor(
                                    data!.status.toString(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
