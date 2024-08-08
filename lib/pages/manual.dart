import 'package:flutter/material.dart';

class ManualAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manual alert'),
      ),
      body: const Center(
        child: Text('This is the Manual alert'),
      ),
    );
  }
}
