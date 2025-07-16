import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_filter_controller.dart';

class LeaveFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaveFilterController());
  }
}
