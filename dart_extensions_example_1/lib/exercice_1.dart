import 'package:dart_application_1/extensions.dart';

void main() {
  int number = 4;
  String name = 'Yahya';
  String? value = 'Yaonek';
  final res = number.addTen;
  final res1 = number.addNumber(4);
  print(res);
  print(res1);
  print(name ^ ('Welcome'));
  print(value.orEmpty());
}
