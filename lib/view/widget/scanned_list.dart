import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'text_widget.dart';

class ScannedList extends StatelessWidget {
  const ScannedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height *0.0528,),
        TextWidget(text: 'Scanned', color: blackColor, fontSize: 25, fontWeight: FontWeight.w600,),
        SizedBox(height: MediaQuery.of(context).size.height *0.0528,),
        Container(
          height: MediaQuery.of(context).size.height *0.5935,
          color: blackColor,
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.03,),
      ],
    );
  }
}