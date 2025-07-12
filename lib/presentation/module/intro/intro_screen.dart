import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/constant/intro_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/intro/controller/intro_controller.dart';

class IntroScreen extends GetResponsiveView<IntroController> {
  IntroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopScope(
        canPop: false,
        onPopInvokedWithResult:
            (didPop, result) =>
                controller.alertController.scaffoldMessengerAlert(
                  context: context,
                  backgroundColor: colorError,
                  textColor: colorWhite,
                  title: "Tekan OK untuk menutup aplikasi",
                  label: "OK",
                  onTap:
                      () => SystemChannels.platform.invokeMethod(
                        'SystemNavigator.pop',
                      ),
                ),
        child: Scaffold(
          backgroundColor: colorWhite,
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: controller.changePage,
                    itemCount: dataIntroConstant.length,
                    itemBuilder:
                        (context, index) => OnboardingContent(
                          title: dataIntroConstant[index].title.toString(),
                          description:
                              dataIntroConstant[index].description.toString(),
                          image: dataIntroConstant[index].image.toString(),
                        ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: marginMd,
                    right: marginMd,
                    top: marginMd,
                    bottom: marginMd * 2.5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      dataIntroConstant.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(authRoute);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorButton.withValues(alpha: 0.75),
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadiusXs,
                      ),
                    ),
                    child: Text(
                      "GET STARTED",
                      style: Get.textTheme.titleMedium!.merge(
                        TextStyle(color: colorWhite, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: marginMd),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: controller.currentPage.value == index ? 24 : 8,
      decoration: BoxDecoration(
        color: controller.currentPage.value == index ? colorButton : colorGrey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  final String title, description, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(marginMd),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 320),
          SizedBox(height: marginMd),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Get.textTheme.titleMedium!.merge(
              TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(height: marginXs),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyMedium!.merge(
              TextStyle(fontSize: 12, color: colorGreyDark),
            ),
          ),
        ],
      ),
    );
  }
}
