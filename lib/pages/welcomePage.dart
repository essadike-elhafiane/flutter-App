import 'dart:async';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    // Set a timer for auto-redirection
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          // SvgPicture.asset(
          //   'assets/images/screen.svg',
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.fill,
          // ),
         Image.asset('assets/images/screen.png',
         
         width: double.infinity,
         height: double.infinity,
         filterQuality: FilterQuality.high ,
          fit: BoxFit.cover,
         ),
        
      
    );
  }
}