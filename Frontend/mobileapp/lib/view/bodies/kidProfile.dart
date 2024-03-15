// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class KidProfile extends StatelessWidget {
  const KidProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
