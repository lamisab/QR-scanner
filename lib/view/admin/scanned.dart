import 'package:flutter/material.dart';

class ScannedScreen extends StatelessWidget {
  ScannedScreen({super.key});
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Waleed bin fares",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '${DateTime.now()}',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
