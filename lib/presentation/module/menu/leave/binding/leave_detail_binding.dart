import 'package:get/get.dart';

import '../controller/leave_detail_controller.dart';

class LeaveDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaveDetailController());
  }
}