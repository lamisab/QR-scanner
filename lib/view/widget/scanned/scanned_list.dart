import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/user_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../utils/colors.dart';
import '../text_widget.dart';

class ScannedList extends StatelessWidget {
  ScannedList({super.key});
  UserController controller = Get.find(tag: "data");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.0528,
        ),
        TextWidget(
          text: 'Scanned',
          color: blackColor,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.0528,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5935,
          child: ListView.builder(
            itemCount: controller.entrants.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() {
                            return TextWidget(
                              text: '${controller.entrants[index].name}',
                              color: blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            );
                          }),
                          TextWidget(
                            text: '${controller.entrants[index].time}',
                            color: greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          TapBounceContainer(
                            child: Container(
                              child: ElevatedButton(
                                child: Text("Sucsses"),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(Icons.check_circle_outline),
                                              SizedBox(
                                                width: 10,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                textDirection:
                                                    TextDirection.ltr,
                                                children: const [
                                                  Text(
                                                      'Scan complted successfully'),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    '-Mrs. Arwa balawi.',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 1,
                                                height: 35,
                                                color: Colors.white
                                                    .withOpacity(0.4),
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
                                      margin: const EdgeInsets.only(
                                        bottom: 680,
                                        right: 20,
                                        left: 20,
                                        top: 20,
                                      ),
                                    ),
                                  );
                                },
                              ),
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
                                                Text(
                                                    'The invitation was cleared'),
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
                      )),
                  Container(
                    height: 1,
                    color: greyColor,
                  )
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
      ],
    );
  }
}
