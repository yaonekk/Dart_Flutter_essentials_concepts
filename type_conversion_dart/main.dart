void main() {
  Map data = {
    "name": "product 1",
    "price": "30.99",
    "quantity": "5",
    "online": "false",
  };

  // String -> double
  double price = double.parse(data["price"]);
  print(data["price"].runtimeType);
  print(price.runtimeType);
  print(price);
  double name = double.tryParse(data["name"]) ?? 0.0;
  double? name1 = double.tryParse(data["name"]);
  print(name); // Output: if Null 0.0
  print(name1); // Output: Null

  // FAILING TESTS
  // double nameF = double.parse(
  //   data["name"],
  // ); // output: Invalid double "product 1"
  // print(nameF);

  // String -> int
  int quantity = int.tryParse(data["quantity"]) ?? 0;
  print(quantity.runtimeType);
  print(quantity);
  int quantity1 = int.tryParse(data["quantity"]) ?? 0;
  print(quantity1.runtimeType);
  print(quantity1);
}
