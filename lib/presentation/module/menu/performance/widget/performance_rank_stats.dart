import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_controller.dart';
import 'package:hr_360/presentation/module/menu/performance/data/performance_my_rank_data.dart';

class PerformanceRankStats extends GetResponsiveView<PerformanceController> {
  final String type;

  PerformanceRankStats({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: paddingMd),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Column(
            children: List.generate(4, (index) {
              return Container(
                color:
                    listPerformanceMyRank[index].order == 7
                        ? colorBackground
                        : Colors.white,
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity:
                          listPerformanceMyRank[index].status == 'stay'
                              ? 0.0
                              : 1,
                      child: Icon(
                        listPerformanceMyRank[index].status == 'up'
                            ? Icons.arrow_drop_up
                            : listPerformanceMyRank[index].status == 'down'
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_down,
                        color:
                            listPerformanceMyRank[index].status == 'up'
                                ? colorSuccess
                                : listPerformanceMyRank[index].status == 'down'
                                ? colorError
                                : Colors.white,
                        size: 32,
                      ),
                    ),
                    Text(
                      listPerformanceMyRank[index].order.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:
                            listPerformanceMyRank[index].order == 7
                                ? colorTheme
                                : Colors.black,
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child:
                          type == 'my rank'
                              ? SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  spacing: 8,
                                  children: List.generate(
                                    listPerformanceMyRank.length,
                                    (index) {
                                      return CircleAvatar(
                                        radius: 16,
                                        child: ClipOval(
                                          child: Image.asset(
                                            listPerformanceMyRank[index].image,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                              : Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    child: ClipOval(
                                      child: Image.asset(
                                        listPerformanceMyRank[index].image,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      listPerformanceMyRank[index].title,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${listPerformanceMyRank[index].points.toString()} Points',
                            style: TextStyle(
                              color:
                                  listPerformanceMyRank[index].order == 7
                                      ? colorTheme
                                      : colorGreyDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {},
            child: Text(
              'View all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: colorTheme,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
