import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/controller/permission_controller.dart';

class OvertimeController extends GetxController {
  var currentIndex = 0.obs;

  final List<String> navItems = ["Active", "History", "Approval", "Tim"];

  void thisCurrentIndex(int index) {
    currentIndex.value = index;
  }

  bool isSelected(int index) {
    return currentIndex.value == index;
  }

  // data color
  Color getStatusColor(String status) {
    switch (status) {
      case 'active':
      case 'Active':
        return Colors.green;
      case 'rejected':
      case 'Rejected':
        return Colors.red;
      case 'Approved':
      case 'approved':
        return Colors.blue;
      case 'Pending':
      case 'pending':
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }

  // data static dropdown
  var selectedValue = Rx<String?>(null);
  final List<String> items = ['2025-04-01', '2025-04-02', '2025-04-03'];
  // profile add tim overtime
  final List<String> people = [
    'John Doe',
    'Jane Smith',
    'Michael Johnson',
    'Emily Davis',
    'putra putra putra',
    'putra putra putri',
  ];

  var selectedPeople = <String>[].obs;

  void showPersonPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a person'),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(people[index]),
                  onTap: () {
                    if (!selectedPeople.contains(people[index])) {
                      selectedPeople.add(people[index]);
                    }
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    permissionController.checkPermissionRequest();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  GetStorage storage = GetStorage('Dimata');

  final GlobalKey<ScaffoldState> scaffoldDashboardKey =
      GlobalKey<ScaffoldState>();

  final RxInt currentNavbar = 0.obs;

  //
  // final AlertController alertController = Get.put(AlertController());

  final PermissionController permissionController = Get.put(
    PermissionController(),
  );
}
