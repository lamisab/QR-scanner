import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../utils/strings.dart';
import '../view/admin/scanned.dart';

class AdminController extends GetxController {
  final scanned = false.obs;
  void changeContent() {
    scanned.value = !scanned.value;
  }
}
