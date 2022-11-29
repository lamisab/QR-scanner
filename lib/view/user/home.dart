// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/user_controller.dart';
import '../../utils/colors.dart';
import '../widget/qr_widget.dart';
import '../widget/text_widget.dart';

class Home extends StatelessWidget {
  Home({super.key});
  UserController controller = Get.find(tag: "data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1537),
                      TextWidget(
                        text: 'Mrs. Arwa balawi',
                        color: blackColor,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0258),
                      TextWidget(
                        text: 'UI/UX Designer',
                        color: blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0258),
                      TextWidget(
                        text: 'The Garage',
                        color: blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0375),
                      QRWidget(
                        uniqueString: controller.uniqueString.value, size: 250,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1514),
                    ],
                  ),
                ],
              ),
              Container(
                color: greyColor,
                height: MediaQuery.of(context).size.height * 0.1537,
                width: MediaQuery.of(context).size.width,
                child: Center(child: TextWidget(text: 'Company logo and name', color: blackColor, fontSize: 22, fontWeight: FontWeight.w600)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
