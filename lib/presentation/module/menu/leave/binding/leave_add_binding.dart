import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_add_controller.dart';

class LeaveAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaveAddController());
  }
}