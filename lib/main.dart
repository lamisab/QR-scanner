import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QR',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: appRoutes(),
    );
  }
}
