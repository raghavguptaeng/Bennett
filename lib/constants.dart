import 'package:bennett/colors.dart';
import 'package:flutter/material.dart';

var line = Container(
  height: 48,
  width: 2,
  decoration: BoxDecoration(
    color: HexColor('#87A0E5')
        .withOpacity(0.5),
    borderRadius: BorderRadius.all(
        Radius.circular(4.0)),
  ),
);

var line2 = Container(
  height: 48,
  width: 2,
  decoration: BoxDecoration(
    color: HexColor('#F56E98').withOpacity(0.5),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
);

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

var kSmallTextStyle = TextStyle(
  fontWeight:
  FontWeight.w600,
  fontSize: 12,
  letterSpacing: -0.2,
  color:grey
      .withOpacity(0.5),
);

const container_odd_circularDecor = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(50),
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
        bottomLeft: Radius.circular(10)));

const String fontName = 'Roboto';
