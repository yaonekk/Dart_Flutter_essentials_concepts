import 'package:flutter/material.dart';
import 'package:flutter_extensions_example_2/extensions/extensions.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hello world')
          .center()
          .roundedRectangleBorder(
            radius: 25,
            backgroundColor: Colors.redAccent.withAlpha(250),
          )
          .paddingAll(60),
    );
  }
}
