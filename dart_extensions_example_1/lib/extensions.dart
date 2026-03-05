import 'package:dart_application_1/exercice_2.dart';

// EXERCICE_1
extension IntegerX on int {
  int get addTen => this + 10; // as a getter
  int addNumber(int number) => this + number; // as a function
}

extension StringX on String {
  String operator ^(String prefix) => "$prefix $this"; // with operator (^)
}

extension StringXX on String {
  String addPrefix(String prefix) => "$prefix $this"; // with method (addPrefix)
}

extension StringNullX on String? {
  String orEmpty() => this == null ? "no value" : this!;
}

// EXERCICE_2
extension SingleOrderX on SingleOrder {
  double calcTotalPrice() => price * quantity;
}
