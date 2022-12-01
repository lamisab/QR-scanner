// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/user_controller.dart';
import '../widget/caregory_footer.dart';
import '../widget/scanned_list.dart';
import '../widget/scanner_widget.dart';

class AdminHome extends StatelessWidget {
  AdminHome({super.key});
  UserController entrant = Get.find(tag: "data");

  @override
  Widget build(BuildContext context) {
    entrant.addEntrant();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return controller.scanned.value
                    ? ScannerWidget()
                    : ScannedList();
              }),
              Center(child: CategorySelectHeader()),
            ],
          ),
        ),
      ),
    );
  }
}
