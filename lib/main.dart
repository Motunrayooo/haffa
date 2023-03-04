import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haffa/src/core/navigation/navigation.1.0.dart';
import 'package:haffa/src/features/auth/splash_screen.dart';
import 'package:haffa/src/provider_locator.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    final providerTheme = ref.watch(themeProvider);
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ref.watch(themeProvider.notifier).returnThemeBasedOnMode(),
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: HaffaNavigator.scaffoldMessengerKey,
        navigatorKey: HaffaNavigator.navigatorKey,
        // themeMode: ,
        home: const SplashScreen(),
      );
    });
  }
}

