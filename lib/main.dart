import 'package:flutter/material.dart';
import 'package:flutter_application_8/todo.dart';

void main() {
  runApp(const PropelApp());
}

class PropelApp extends StatelessWidget {
  const PropelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROPEL Mentorship',
      theme: ThemeData( fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

