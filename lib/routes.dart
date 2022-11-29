// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import 'bindings.dart';
import 'view/admin/admin_screen.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => AdminScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
    ];
