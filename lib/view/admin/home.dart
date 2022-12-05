// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/user_controller.dart';
import '../widget/scanQR/caregory_footer.dart';
import '../widget/scanned/scanned_list.dart';
import '../widget/scanQR/scanner_widget.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
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
