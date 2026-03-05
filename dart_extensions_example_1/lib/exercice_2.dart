import 'package:dart_application_1/extensions.dart';

class SingleOrder {
  double price;
  int quantity;
  SingleOrder({required this.price, required this.quantity});
}

void main() {
  final order = SingleOrder(price: 100, quantity: 2);
  final totalPrice = order.calcTotalPrice();
  print(totalPrice);
}
