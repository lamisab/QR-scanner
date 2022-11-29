import 'package:flutter/material.dart';

class ScannerWidget extends StatefulWidget {
  const ScannerWidget({super.key});

  @override
  State<ScannerWidget> createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: MediaQuery.of(context).size.height *0.2640,),
        Container(
          height: MediaQuery.of(context).size.height *0.3544 ,
          width: MediaQuery.of(context).size.width *0.95,
          color: Colors.blue,
        ),
         SizedBox(height: MediaQuery.of(context).size.height *0.1420,),
      ],
    );
  }
}