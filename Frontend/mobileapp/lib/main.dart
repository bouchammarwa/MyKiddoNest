// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileapp/view/screens/addKid.dart';
import 'package:mobileapp/view/screens/loginPage.dart';
import 'package:mobileapp/view/screens/mainPage.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyKiddoNest',
      debugShowCheckedModeBanner: false,
      home:
          isAuthenticated() ? (hasKid() ? MainPage() : AddKid()) : LoginPage(),
    );
  }

  bool isAuthenticated() {
    return false; // For simplicity.... later we'll set it using the database or firebase
  }

  bool hasKid() {
    return false; // For simplicity.... later we'll set it using the database or firebase
  }
}
