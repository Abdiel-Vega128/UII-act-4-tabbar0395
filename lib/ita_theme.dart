import 'package:flutter/material.dart';

class ItaTheme {
  static const Color forestGreen = Color(0xFF2E7D32);
  static const Color pomodoroRed = Color(0xFFC62828);
  static const Color boneWhite = Color(0xFFFCFCFC);
  static const Color charcoal = Color(0xFF212121);

  static const String fontFamily = 'Georgia';

  static TextStyle get sectionTitle => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 34,
    letterSpacing: 10,
    color: forestGreen,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get subtitleStyle => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    letterSpacing: 4,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  );
}