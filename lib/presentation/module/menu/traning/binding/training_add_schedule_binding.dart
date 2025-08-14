import 'package:get/get.dart';

import '../controller/training_add_schedule_controller.dart';

class TrainingAddScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingAddScheduleController());
  }
}