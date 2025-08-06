import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_controller.dart';
import 'package:hr_360/presentation/module/menu/performance/widget/performance_card.dart';

class PendingPage extends GetResponsiveView<PerformanceController> {
  PendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingMd),
      child: Column(
        children: List.generate(4, (index) {
          return PerformanceCard(status: 'Pending', id: index,);
        }),
      ),
    );
  }
}
