import 'package:get/get.dart';
import '../controller/performance_filters_controller.dart';

class PerformanceFiltersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PerformanceFiltersController());
  }
}