import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/menu/overtime/controller/overtime_controller.dart';

class OverlappingAvatars extends GetResponsiveView<OvertimeController> {
  final List<String> profileImages;

  OverlappingAvatars({required this.profileImages, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none, 
        children: [
          for (int i = 0; i < profileImages.length && i < 3; i++)
            Positioned(
              left: i * 20.0,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(profileImages[i]),
                ),
              ),
            ),
    
          if (profileImages.length > 3)
            Positioned(
              left: 3 * 20.0, 
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.shade300,
                  child: Text(
                    '+${profileImages.length - 3}',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
