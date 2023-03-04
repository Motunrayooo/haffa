import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haffa/src/core/util/theme/theme.dart';


enum AppThemeMode {
  light,
  dark,
}

class ThemeProvider extends StateNotifier<AppThemeMode> {
  ThemeProvider(super.state);

  AppThemeMode get mode => state;

  changeThemeState(AppThemeMode changeMode) {
    state = changeMode;
  }

  changeIfBool(bool boolMode) {
    if (boolMode == true) {
      state = AppThemeMode.light;
    } else {
      state = AppThemeMode.dark;
    }
  }

  ThemeData? returnThemeBasedOnMode() {
    if (state == AppThemeMode.light) {
      return HaffaTheme.defaultTheme;
    }
    if (state == AppThemeMode.dark) {
      return HaffaTheme.secondaryTheme;
    }
    return HaffaTheme.defaultTheme;
  }
}
