import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/manual.dart';
import 'package:flutter_application_2/pages/welcomePage.dart';
import './components/bottombar.dart' ; // Import the top bar widget
import './components/body.dart'; // Import the body widget
import './components/topbar.dart'; // Import the bottom bar widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/home': (context) => const MyHomePage(), // Replace with your actual home page widget
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.grey,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(), // Use the TopBar widget
      body: const Body(), // Use the Body widget
      floatingActionButton: Container(
        width: 60.0,
        height: 60.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ManualAlert()),
            );
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: const Icon(Icons.add, color: Colors.white, size: 30.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color(0xFFF5F5F5),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
