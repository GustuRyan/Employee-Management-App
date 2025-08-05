import 'package:get/get.dart';

class PerformanceController extends GetxController {
  final List<String> navItems = [
    'Chart', 'Achievement', 'Approval'
  ];

  RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}