import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/admin_contrller.dart';
import '../../utils/colors.dart';
import 'category_screen.dart';

AdminController controller = Get.find();

class CategorySelectHeader extends StatelessWidget {
  const CategorySelectHeader({Key? key}) : super(key: key);

  static AdminController? adminController;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width *0.95,
      decoration: const BoxDecoration(
        color: slider,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Obx(() {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CategorySelector(
              text: "Scan QR",
              onPress: () {
                controller.changeContent();
              },
              textColor: controller.scanned.value ? whiteColor : categoryText,
              containerColor:
                  controller.scanned.value ? sliderLink : Colors.transparent,
            ),
            CategorySelector(
              text: "Scanned",
              onPress: () {
                controller.changeContent();
              },
              textColor: controller.scanned.value ? categoryText : whiteColor,
              containerColor:
                  controller.scanned.value ? Colors.transparent : sliderLink,
            ),
          ],
        );
      }),
    );
  }
}
