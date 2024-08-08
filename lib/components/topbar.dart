// topbar.dart
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0); // Height of the AppBar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Overview',
        style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Color(0xFFDDDDDD),
          ),
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('Notifications pressed')),
            // );
          },
        ),
        IconButton(
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(17.5), // Half of the width/height to make it fully round
            child: Image.asset(
              'assets/images/img.jpg',
              width: 35.0,
              height: 35.0,
              fit: BoxFit.cover,
            ),
          ),
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('Profile pressed')),
            // );
          },
        ),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(255, 128, 126, 126),
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
