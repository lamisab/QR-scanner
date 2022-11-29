import 'package:flutter/material.dart';

class ScannedScreen extends StatelessWidget {
  ScannedScreen({super.key});
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
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
}
