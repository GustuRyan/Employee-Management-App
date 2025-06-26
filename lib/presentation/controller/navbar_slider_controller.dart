import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarSliderController extends GetxController {
  RxInt currentIndex = 0.obs;

  void thisCurrentIndex (int index) {
    currentIndex.value = index;
  }

  bool isSelected(int index) {
    return currentIndex.value == index;
  }
}