
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaffaNavigator{
   HaffaNavigator._();

   
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();


  static navigateToRoute(dynamic routeClass) {
    Navigator.push(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass));
  }

  static void navigateAndRemoveUntilRoute(dynamic routeClass) {
    Navigator.pushAndRemoveUntil(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass), (route) => false);
  }


  }


 

  