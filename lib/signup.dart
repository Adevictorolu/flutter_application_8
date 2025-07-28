import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final String role;
  const SignupScreen({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up as ${role[0].toUpperCase()}${role.substring(1)}')),
      body: const Center(
        child: Text('Signup Form Coming Soon'),
      ),
    );
  }
}