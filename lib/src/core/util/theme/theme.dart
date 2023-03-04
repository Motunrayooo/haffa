
import 'package:flutter/material.dart';
import 'package:haffa/src/core/util/theme/color.dart';
import 'package:haffa/src/core/util/theme/text_style.dart';

class HaffaTheme{
   HaffaTheme._();

static ThemeData get defaultTheme {
  return ThemeData(
    scaffoldBackgroundColor: HaffaColors.defaultBgColor,
    primaryColor: HaffaColors.primaryColor,
    primaryColorLight: HaffaColors.primaryColor,
   textTheme: TextTheme(
        bodyMedium: HaffaTextStyle.bodyMedium.copyWith(),
        bodyLarge: HaffaTextStyle.bodyLarge.copyWith(),
        bodySmall: HaffaTextStyle.bodySmall.copyWith(),
        titleLarge: HaffaTextStyle.titleLarge,
        titleMedium: HaffaTextStyle.titleMedium,
        titleSmall: HaffaTextStyle.titleSmall,
        headlineLarge: HaffaTextStyle.headlineLarge,
        headlineMedium: HaffaTextStyle.headlineMedium,
        headlineSmall: HaffaTextStyle.headlineSmall,
        labelLarge: HaffaTextStyle.button,
      ),
  );
}

static ThemeData get secondaryTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: HaffaColors.secondaryModeBgColor,
      primaryColor: HaffaColors.primaryColor,
      primaryColorLight: HaffaColors.secondaryModePriColor,
      textTheme: TextTheme(
        bodyMedium: HaffaTextStyle.bodyMedium.copyWith(color: HaffaColors.whiteColor),
        bodyLarge: HaffaTextStyle.bodyLarge.copyWith(color: HaffaColors.whiteColor),
        bodySmall: HaffaTextStyle.bodySmall.copyWith(color: HaffaColors.whiteColor),
        titleLarge: HaffaTextStyle.titleLarge.copyWith(color: HaffaColors.whiteColor),
        titleMedium: HaffaTextStyle.titleMedium.copyWith(color: HaffaColors.whiteColor),
        titleSmall: HaffaTextStyle.titleSmall.copyWith(color: HaffaColors.whiteColor),
        headlineLarge: HaffaTextStyle.headlineLarge.copyWith(color: HaffaColors.whiteColor),
        headlineMedium:
            HaffaTextStyle.headlineMedium.copyWith(color: HaffaColors.whiteColor),
        headlineSmall: HaffaTextStyle.headlineSmall.copyWith(color: HaffaColors.whiteColor),
        labelLarge: HaffaTextStyle.button.copyWith(color: HaffaColors.whiteColor),
      ),
      //the color scheme requires alot of parameters in the new flutter SDK update
      // colorScheme: ColorScheme(
      //     error: FColors.primaryRed, background: Colors.transparent),
    );
  }
 }


