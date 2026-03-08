class Employee {
  void login() {
    print("Login...");
  }
}

mixin Medical {
  // - 01 -
  void checkTemp() {
    print("Check temperature...");
  }
}
mixin Surgery {
  void performSurgery() {
    print("Perform surgery...");
  }

  // - 1 -
  // void checkTemp() {
  //   print("Check temperature Surgery...");
  // }
}

mixin LogOut on Employee {
  void logout() {
    print("Logout...");
  }
}

class Nurse extends Employee with Medical, LogOut {
  @override
  void login() {
    super.login;
    print("Nurse");
  }

  @override
  void checkTemp() {
    super.checkTemp();
    print("Nurse");
  }
}

// the last mixin always runs first -1- RUNS FIRST INSTEAD OF -01-
class Doctor extends Employee with Medical, Surgery, LogOut {}

class Driver extends Employee with LogOut {}

// class Player with LogOut {}  // ERROR: LogOut mixin works only on Employee class

void main() {
  Doctor().logout();
  // Nurse().checkTemp();
  Doctor()
      .checkTemp(); // which mixin runs FIRST // output : Check temperature Surgery...
  // Doctor().CheckTemp();
  // Driver().login();
}
