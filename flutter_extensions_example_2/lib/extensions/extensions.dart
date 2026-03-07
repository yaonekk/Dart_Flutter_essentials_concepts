import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Widget center() {
    return Center(child: this);
  }

  Padding paddingAll(double padding) {
    return Padding(padding: .all(padding), child: this);
  }
}

extension ShapeBorderX<T extends Widget> on T {
  Container roundedRectangleBorder({
    required double radius,
    Color backgroundColor = Colors.white,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: .all(color: Colors.black),
        borderRadius: .circular(radius),
      ),
      child: this,
    );
  }
}
