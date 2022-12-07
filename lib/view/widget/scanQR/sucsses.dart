import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner/controller/user_controller.dart';
import 'package:qr_scanner/model/admin/text_widget.dart';
import '../../../utils/colors.dart';

class Sucsses extends StatelessWidget {
  Sucsses({super.key});
  UserController controller = Get.find(tag: "data");

  final _globalKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _globalKey,
      child: AlertDialog(
        backgroundColor: snackBarGreen,
        content: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Sucsses',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Scan complted successfully'),
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
                    Get.back();
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
