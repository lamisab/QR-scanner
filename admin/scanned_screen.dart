import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner/utils/colors.dart';

class ScannedScreen extends StatelessWidget {
  ScannedScreen({super.key});
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Get.isDarkMode ? backgroundWhite : backgroundBlack,
        title: Text('Scanned'),
      ),
      backgroundColor: backgroundBlack,
      body: ListView.separated(
        itemBuilder: (context, index) {
          return buildScaneedItems();
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            thickness: 1,
          );
        },
        itemCount: 10,
      ),
    );
  }

  Widget buildScaneedItems() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Waleed bin fares",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '${DateTime.now()}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
