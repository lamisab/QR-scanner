class User {
  String? name;
  String? email;
  String? company;
  String? job;
  User(this.name, this.email,this.job,this.company);
}

class Entrant extends User {
  DateTime? time;
  Entrant(super.name, super.email,super.job,super.company, this.time);
}
