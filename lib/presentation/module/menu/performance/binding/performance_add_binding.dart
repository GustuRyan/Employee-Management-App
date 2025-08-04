import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/performance/controller/performance_add_controller.dart';

class PerformanceAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PerformanceAddController());
  }
}