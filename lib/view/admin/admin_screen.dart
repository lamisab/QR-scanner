import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //for camera

            const SizedBox(
              height: 90,
            ),
            //for select footer
            const CategorySelectHeader(),
            Obx(() {
              return controller.scanned.value ? Text("data1") : ScannedScreen();
            }),
            const SizedBox(height: 24),
            TapBounceContainer(
              child: ElevatedButton(
                child: Text("Sucsses"),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.add_task_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Sucsses',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Text('Scan complted successfully'),
                                  Text(
                                    '-Mrs. Arwa balawi.',
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Container(
                                width: 1,
                                height: 55,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      backgroundColor: snackBarGreen,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(
                        bottom: 630,
                        right: 20,
                        left: 20,
                        top: 20,
                      ),
                    ),
                  );
                },
              ),
            ),

            TapBounceContainer(
              child: ElevatedButton(
                child: Text("eroor"),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.cancel_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Eroor',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Text('The invitation was cleared'),
                                  Text(
                                    '-Mrs. Arwa balawi.',
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Container(
                                width: 1,
                                height: 55,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      backgroundColor: snackBarRed,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(
                        bottom: 630,
                        right: 20,
                        left: 20,
                        top: 20,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
