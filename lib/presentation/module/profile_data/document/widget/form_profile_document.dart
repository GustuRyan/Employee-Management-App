import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_360/core/constant/profile_document_constant.dart';
import 'package:hr_360/core/style/style.dart';
import 'package:hr_360/presentation/module/profile_data/document/controller/profile_document_controller.dart';
import 'package:hr_360/presentation/widget/items/profile/item_profile_document.dart';

class FormProfileDocumentWidget
    extends GetResponsiveView<ProfileDocumentController> {
  FormProfileDocumentWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(dataProfileDocumentConstant.length, (
                index,
              ) {
                var item = dataProfileDocumentConstant[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: marginMd),
                  child: ItemProfileDocument(data: item),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
