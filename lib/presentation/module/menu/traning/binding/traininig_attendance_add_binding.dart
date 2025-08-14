import 'package:get/get.dart';
import '../controller/training_attendance_add_controller.dart';

class TrainingAttendanceAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingAttendanceAddController());
  }
}