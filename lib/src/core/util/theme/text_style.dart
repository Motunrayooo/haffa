
 import 'package:flutter/material.dart';
import 'package:haffa/src/core/util/theme/color.dart';
import 'package:haffa/src/core/util/theme/strings.dart';

class HaffaTextStyle {
  HaffaTextStyle._();

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 34,
    fontFamily:  HaffaString.normalFont
  );
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontFamily:  HaffaString.normalFont
  );
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 22,
    fontFamily:  HaffaString.normalFont
  );
  static TextStyle subtitle = const TextStyle(
    fontSize: 11.5,
    fontFamily:  HaffaString.normalFont
  );
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontFamily:  HaffaString.normalFont
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontFamily:  HaffaString.normalFont
  );
  static const TextStyle titleLarge = headlineLarge;
  static const TextStyle titleMedium = headlineMedium;
  static const TextStyle titleSmall = headlineLarge;
  static  TextStyle body = TextStyle(
    fontSize: 13,
    color: HaffaColors.whiteColor,
    fontFamily: HaffaString.normalFont
  );
  static TextStyle bodyLarge = body.copyWith(fontSize: 17);
  static TextStyle bodyMedium = body.copyWith(fontSize: 14);
  static TextStyle bodySmall = body.copyWith(fontSize: 11);
}

