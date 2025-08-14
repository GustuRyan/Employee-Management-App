import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_filter_controller.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_filter_controller.dart';

class TrainingFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingFilterController());
  }
}
