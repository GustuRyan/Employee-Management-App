import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/date_util.dart';
import 'package:hr_360/data/model/card/card_model.dart';
import 'package:hr_360/data/model/profile/family/profile_family_model.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/page/overtime_ditail.dart';
import 'package:hr_360/presentation/module/profile_data/family/controller/profile_family_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CardOvertimeApproval extends GetResponsiveView<OvertimeController> {
  CardOvertimeApproval({super.key, this.data});

  final CardModel? data;

  bool isActive = true;

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
              builder: (context) => OvertimeDitail(data: data!),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(marginXs),
          child: Column(
            children: [
              ResponsiveGridRow(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ResponsiveGridCol(
                    xs: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: marginSm),

                      height: 125.h,
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
                                style: Get.textTheme.titleSmall!.merge(
                                  TextStyle(fontSize: 14.sp),
                                ),
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
                                          style: Get.textTheme.titleSmall!
                                              .merge(TextStyle(fontSize: 10.sp)),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          data!.time.toString(),
                                          style: Get.textTheme.titleSmall!
                                              .merge(TextStyle(fontSize: 10.sp)),
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
                            TextStyle(color: colorGreyDark, fontSize: 12.sp),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Wrap(
                          spacing: 5,
                          runSpacing: 5,
                          direction: Axis.horizontal,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: colorGrey,
                              size: 15.h,
                            ),

                            Text(
                              data!.startwork.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Get.textTheme.bodySmall!.merge(
                                TextStyle(color: colorGrey, fontSize: 12.sp),
                              ),
                            ),

                            Text(
                              "to",
                              style: Get.textTheme.bodySmall!.merge(
                                TextStyle(color: colorGrey, fontSize: 12.sp),
                              ),
                            ),

                            Text(
                              data!.endwork.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Get.textTheme.bodySmall!.merge(
                                TextStyle(color: colorGrey, fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  color: colorGrey,
                                  size: 15.w,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  data!.timework.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: Get.textTheme.bodySmall!.merge(
                                    TextStyle(
                                      color: colorGrey,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 50.w),
                                Text(
                                  data!.status.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: Get.textTheme.bodySmall!.merge(
                                    TextStyle(
                                      color: controller.getStatusColor(
                                        data!.status.toString(),
                                      ),
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: marginSm),
                              child: CircleAvatar(
                                foregroundColor: colorGreyLight,
                                backgroundColor: colorGreyLight,
                                radius: 10.r,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: colorGreyLight,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        data!.profile.toString(),
                                      ),
                                      filterQuality: FilterQuality.low,
                                      fit: BoxFit.contain,
                                    ),
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
