import 'package:flutter/material.dart';

import 'camera_widget.dart';

class ScannerWidget extends StatelessWidget {
  const ScannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: MediaQuery.of(context).size.height *0.100,),
        CameraWidget(),
         SizedBox(height: MediaQuery.of(context).size.height *0.0420,),
      ],
    );
  }
}