import 'package:get/get.dart';

import '../controller/training_add_plan_controller.dart';


class TrainingAddPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingAddPlanController());
  }
}