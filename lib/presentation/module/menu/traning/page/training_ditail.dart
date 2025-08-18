import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/constant/profile_family_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/data/model/card/card_model.dart';
import 'package:hr_360/data/model/card/card_trening_model.dart';
import 'package:hr_360/data/model/profile/family/profile_family_model.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';
import 'package:hr_360/presentation/module/menu/overtime/widget/card_overtime.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/widget/card_training.dart';
import 'package:hr_360/presentation/widget/customs/custom_clock_widget.dart';
import 'package:responsive_grid/responsive_grid.dart';

class TrainingDitail extends GetResponsiveView<TrainingController> {
  TrainingDitail({super.key, required this.data});
  final CardTreningModel data;
  @override
  Widget build(BuildContext context) {
    if (data!.status.toString() == "active") {
      return Scaffold(
        backgroundColor: colorWhite,
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
            "Training detail",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(paddingLg),
            child: Column(
              children: [
                AbsorbPointer(absorbing: true, child: CardTraining(data: data)),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetUtil().path(path: 'icon/icon-humans-line.png'),
                        width: 35,
                      ),
                      SizedBox(width: 25),
                      Expanded(
                        child: Text(
                          "Muhamad Abdul, Jasone William",
                          style: Get.textTheme.titleMedium!,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetUtil().path(path: 'icon/icon-map-pin.png'),
                        width: 30,
                      ),
                      SizedBox(width: 25),
                      Expanded(
                        child: Text(
                          "Jalan Pulau Menjangan Gang 1 No 2 Tabanan",
                          style: Get.textTheme.titleMedium!,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 100,
                  runSpacing: 20,
                  children: [
                    CustomClockWidget(),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 32,
                        ),
                        backgroundColor: colorWarning,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () => Get.toNamed(trainingQrScannerRoute),
                      child: Text(
                        "Clock In",
                        style: Get.textTheme.titleLarge!.merge(
                          TextStyle(color: colorWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: colorWhite,
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
            "Training detail",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(paddingLg),
            child: Column(
              children: [
                AbsorbPointer(absorbing: true, child: CardTraining(data: data)),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetUtil().path(path: 'icon/icon-humans-line.png'),
                        width: 35,
                      ),
                      SizedBox(width: 25),
                      Expanded(
                        child: Text(
                          "Muhamad Abdul, Jasone William",
                          style: Get.textTheme.titleMedium!,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetUtil().path(path: 'icon/icon-map-pin.png'),
                        width: 30,
                      ),
                      SizedBox(width: 25),
                      Expanded(
                        child: Text(
                          "Jalan Pulau Menjangan Gang 1 No 2 Tabanan",
                          style: Get.textTheme.titleMedium!.merge(
                            TextStyle(color: colorGrey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetUtil().path(path: 'icon/icon-clipboard.png'),
                        width: 30,
                      ),
                      SizedBox(width: 25),
                      Text(
                        "98.0",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Text(
                        "Clock in at",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorButton),
                        ),
                      ),
                      SizedBox(width: 25),
                      Text(
                        "08 : 25 : 50",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorButton),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Jalan Pulau Menjangan Gang 1 No 2 Tabanan",
                          style: Get.textTheme.titleMedium!.merge(
                            TextStyle(color: colorGrey),
                          ),
                        ),
                      ),
                      SizedBox(width: 25),
                      CircleAvatar(
                        backgroundColor: colorBackground,
                        radius: 15,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            backgroundColor: colorButton,
                            radius: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Text(
                        "Clock out at",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorWarning),
                        ),
                      ),
                      SizedBox(width: 25),
                      Text(
                        "08 : 25 : 50",
                        style: Get.textTheme.titleMedium!.merge(
                          TextStyle(color: colorWarning),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingLg),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Jalan Pulau Menjangan Gang 1 No 2 Tabanan",
                          style: Get.textTheme.titleMedium!.merge(
                            TextStyle(color: colorGrey),
                          ),
                        ),
                      ),
                      SizedBox(width: 25),
                      CircleAvatar(
                        backgroundColor: colorBackground,
                        radius: 15,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            backgroundColor: colorWarning,
                            radius: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
