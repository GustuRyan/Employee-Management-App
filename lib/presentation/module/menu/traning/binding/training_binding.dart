import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_controller.dart';

class TrainingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingController());
  }
}
