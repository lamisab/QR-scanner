// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner/controller/user_controller.dart';
import 'package:qr_scanner/view/widget/text_widget.dart';
import '../../../utils/colors.dart';

// ignore: must_be_immutable
class error extends StatelessWidget {
  error({super.key});
  UserController controller = Get.find(tag: "data");

  final _globalKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _globalKey,
      child: AlertDialog(
        backgroundColor: snackBarRed,
        content: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Error',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('The invitation was cleared'),
                    const SizedBox(
                      height: 2,
                    ),
                    Obx(() {
                      return TextWidget(
                        text: '${controller.userName}',
                        color: blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      );
                    }),
                  ],
                ),
                Container(
                  width: 1,
                  height: 25,
                  color: Colors.white.withOpacity(0.4),
                ),
                IconButton(
                  onPressed: () {
                    Get.close(0);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
