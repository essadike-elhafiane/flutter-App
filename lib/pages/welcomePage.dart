import 'package:flutter/material.dart';
import 'dart:async';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/screen.png',
        width: double.infinity,
        height: double.infinity,
        filterQuality: FilterQuality.high,
        fit: BoxFit.cover,
      ),
    );
  }
}
