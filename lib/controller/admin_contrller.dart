import 'package:get/get.dart';
class AdminController extends GetxController {
  final scanned = false.obs;
  void changeContent() {
    scanned.value = !scanned.value;
  }
}
