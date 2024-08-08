import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ManualAlert extends StatelessWidget {
  const ManualAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the default back button
        backgroundColor:const Color(0xFFE3E3E3), // Set the background color to gray
        title: const Text('Manual alert'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/Vector5.svg',
              width: 20.0,
              height: 20.0,
            ),
            onPressed: () {
              Navigator.pop(context); // Your custom action
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(23.0),
        color: Colors.white,
        child:const Column(
          
          children: [
            const Text(
              'Alert',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'This is a manual alert. You can use this to alert the user of something important.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
