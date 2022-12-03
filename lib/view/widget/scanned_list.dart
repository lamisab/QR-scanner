import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/user_controller.dart';
import '../../utils/colors.dart';
import 'text_widget.dart';
UserController entrant = Get.find(tag: "data");

class ScannedList extends StatelessWidget {
  const ScannedList({super.key});

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
            itemCount: entrant.entrants.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: entrant.entrants[index].name,
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          TextWidget(
                            text: '${DateTime.now()}',
                            color: greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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
