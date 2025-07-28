import 'package:flutter/material.dart';
import 'package:flutter_application_8/homeScreen.dart';
import 'package:flutter_application_8/todo.dart';

class RouteManger{
  static const String homepage = '/';
  static const String todopage = '/todopage';
}


Route<dynamic>generateRoute(RouteSettings settings){
  switch (settings.name) {
    case '/': return MaterialPageRoute(builder: (context) {
      return Homescreen();
    },);
    case '/todopage':return MaterialPageRoute(builder: (context) {
      return TodaScreen();
    },);
    default: throw FormatException('Page Not Found');
  }
}