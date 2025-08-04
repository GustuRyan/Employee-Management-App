import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_detail_controller.dart';

class PerformanceDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PerformanceDetailController());
  }
}