// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
