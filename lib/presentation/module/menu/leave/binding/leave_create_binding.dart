import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_create_controller.dart';

class LeaveCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaveCreateController());
  }
}