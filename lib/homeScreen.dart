// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_8/router/route.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        shadowColor: Colors.black,
        backgroundColor: Colors.blue.shade400,
        toolbarHeight: 50,
        title: Center(
          child: Text(
            'Task Manager',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
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
          ButtonS(
            text: Text(
              'Get Started',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            color: Colors.blue.shade400, onPressed: () {
              Navigator.of(context).pushNamed(RouteManger.todopage);
            },
          ),
          ButtonS(
            text: Text(
              'Sign in',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            color: Colors.grey.shade400, onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ButtonS extends StatelessWidget {
  const ButtonS({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  final Text text;
  final Color color;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 40),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
          ),
        ),
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}
