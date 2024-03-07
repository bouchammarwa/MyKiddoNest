import 'package:flutter/material.dart';
import 'homes/Add_Kid.dart';
import 'homes/Login_Page.dart';
import 'homes/Main_Page.dart';

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
    return true; // For simplicity.... later we'll set it using the database or firebase
  }

  bool hasKid() {
    return true; // For simplicity.... later we'll set it using the database or firebase
  }
}
