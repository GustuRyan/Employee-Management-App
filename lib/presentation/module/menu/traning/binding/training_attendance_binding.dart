import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/traning/controller/training_attendance_controller.dart';

class TrainingAttendanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingAttendanceController());
  }
}