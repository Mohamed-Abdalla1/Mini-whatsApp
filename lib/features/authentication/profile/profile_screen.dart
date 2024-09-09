import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xff11191b),
      body: Center(
        child: Text(
          'Profile Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
