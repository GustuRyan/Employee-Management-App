import 'package:get/get.dart';

import '../controller/training_add_controller.dart';

class TrainingAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingAddController());
  }
}