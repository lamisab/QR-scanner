import 'package:get/get.dart';

import '../model/user_model.dart';

class UserController extends GetxController {
  final uniqueString = "n.altamimi@thegarage.sa".obs;
  final userName = " Norah Mohammed".obs;
  final userCompany = " The Garage".obs;
  final userJob = " developer".obs;
  final isScanned = false.obs;
  final users = [
    User(
        'Norah Mohammed', 'n.altamimi@thegarage.sa', 'Developer', 'The Garage'),
    User(
        'Lmise Mohammed', 'l.altamimi@thegarage.sa', 'Developer', 'The Garage'),
    User('Arwa Mohammed', 'a.altamimi@thegarage.sa', 'UI/UX Designer',
        'The Garage')
  ].obs;
  final entrants = [].obs;

  void currentUser(int index) {
    userName.value = users[index].name!;
    uniqueString.value = users[index].email!;
    userJob.value = users[index].job!;
    userCompany.value = users[index].company!;
  }

  void addEntrant(String email) {
    entrants.add(Entrant(userName.value, email, userJob.value,
        userCompany.value, DateTime.now()));
  }

  bool errorChecker(String email) {
    var contain = entrants.where((element) => element.email == email);
    if (contain.isEmpty) {
      addEntrant(email);
      return true;
    } else {
      return false;
    }
  }
}
