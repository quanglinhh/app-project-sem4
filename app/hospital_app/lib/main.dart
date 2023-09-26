import 'package:flutter/material.dart';
import 'package:hospital_app/server/cubit/app/home-page.dart';
import 'package:hospital_app/server/cubit/app/login-page.dart';
import 'package:hospital_app/server/cubit/app/nav-bar.dart';
import 'package:hospital_app/server/cubit/app/sign-up-page.dart';
import 'package:hospital_app/server/cubit/app/test.dart';
import 'package:hospital_app/server/cubit/app/welcome-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: HomePage(),
          // child: Scaffold(
          //   resizeToAvoidBottomInset: true,
          //     body: HomePage(),
    ));
  }
}
