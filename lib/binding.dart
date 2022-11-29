import 'package:get/get.dart';

import 'controller/user_controller.dart';


class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController(),tag: "data", permanent: true);

  }
}
