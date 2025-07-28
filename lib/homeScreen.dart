// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.blue,
        backgroundColor: Colors.blue,
        toolbarHeight: 50,
        title: Center(
          child: Text(
            'Task Manager',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'asset/img/illustration course screen.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
          ),
          Gap(10),
          ButtonS(
            text: Text(
              'Get Started',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            color: Colors.blue.shade400,
          ),
          Gap(8),
          ButtonS(
            text: Text(
              'Sign in',
              style: TextStyle(color: Colors.black26, fontSize: 14),
            ),
            color: Colors.grey.shade400,
          ),
        ],
      ),
    );
  }
}

class ButtonS extends StatelessWidget {
  const ButtonS({super.key, required this.text, required this.color});

  final Text text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.infinity, 68),      
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
        ),
      ),
      onPressed: () {},
      child: text,
    );
  }
}
