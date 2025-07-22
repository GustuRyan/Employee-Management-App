import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';

class OvertimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OvertimeController());
  }
}
