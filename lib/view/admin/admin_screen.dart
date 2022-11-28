import 'package:flutter/material.dart';
import 'package:qr_scanner/view/home.dart';
import '../../utils/colors.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //for camera

          //for select footer
          Home(),
        ],
      ),
    );
  }
}
