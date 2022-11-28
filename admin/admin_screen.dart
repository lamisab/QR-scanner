import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner/view/admin/scanned_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: ToggleSwitch(
              minWidth: 110.0,
              minHeight: 70.0,
              initialLabelIndex: 0,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: ['Scan QR', 'Scaneed'],
              iconSize: 30.0,
              activeBgColors: [
                [Colors.black45, Colors.black26],
                [Colors.white.withOpacity(0.2), Colors.grey]
              ],
              animate:
                  true, 
              curve: Curves
                  .bounceInOut, 
              onToggle: (index) {
                Get.to(ScannedScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
