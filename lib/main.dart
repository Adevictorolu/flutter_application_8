import 'package:flutter/material.dart';
import 'package:flutter_application_8/homeScreen.dart';

void main() {
  runApp(const PropelApp());
}

class PropelApp extends StatelessWidget {
  const PropelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROPEL Mentorship',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo, fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: const Homescreen(),
    );
  }
}
