import 'package:flutter/material.dart';

abstract class ColorStyles {
  static const backgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static const mainItemsColor = Color.fromRGBO(232, 236, 243, 1);
  static const yellowColor = Color.fromRGBO(244, 215, 59, 1);

  ///texts
  static const mainTextColor = Color.fromRGBO(0, 0, 0, 1);
  static const secondTextColor = Color.fromRGBO(255, 255, 255, 1);
  static const activeElementsTextColor = Color.fromRGBO(28, 179, 85, 1);

  ///marks
  static const firstMarkColor = Color.fromRGBO(0, 119, 255, 1);
  static const secondMarkColor = Color.fromRGBO(197, 33, 255, 1);
  static const fourthMarkColor = Color.fromRGBO(255, 126, 33, 1);
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
