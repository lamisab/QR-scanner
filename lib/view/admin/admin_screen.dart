import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/admin_contrller.dart';
import '../../utils/colors.dart';
import '../widget/caregory_footer.dart';
import '../widget/category_screen.dart';
import 'scanned.dart';

AdminController controller = Get.find(tag: "data");

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //for camera

          const SizedBox(
            height: 90,
          ),
          //for select footer
          CategorySelectHeader(),
          Obx(() {
            return controller.scanned.value ? Text("data1") : ScannedScreen();
          }),
        ],
      ),
    );
  }
}
