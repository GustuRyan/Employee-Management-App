import 'package:get/get.dart';
import 'package:hr_360/presentation/module/menu/leave/controller/leave_detail_list_controller.dart';

class LeaveDetailListBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LeaveDetailListController());
  }
}