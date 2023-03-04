
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haffa/src/core/util/theme/theme_provider.dart';

final themeProvider = StateNotifierProvider((ref) {
  return ThemeProvider(AppThemeMode.light);
});