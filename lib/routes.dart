// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'binding.dart';
import 'view/user/home.dart';
appRoutes() => [
      GetPage(
        name: '/',
        page: () => Home(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
    ];
