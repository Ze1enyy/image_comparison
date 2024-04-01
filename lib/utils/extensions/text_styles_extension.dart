import 'package:flutter/material.dart';

extension TextStylesExtension on ThemeData {
  TextStyle get header18 => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white,
      );

  TextStyle get content14 => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );

  TextStyle get content12 => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: Colors.white,
      );
}
