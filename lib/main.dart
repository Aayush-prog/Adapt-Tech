import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:one_byte_foods/homepage.dart';
import 'package:one_byte_foods/landingpage.dart';
import 'package:one_byte_foods/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListView(
          padding: EdgeInsets.only(top: 30),
          // height: double.infinity,
          // width: double.infinity,
          // decoration: const BoxDecoration(
          //   color: Colors.white,
          // ),
          children: [
            const LandingPage(),
            // const Home(),
          ]),
      // bottomNavigationBar: Nav(),
    ));
  }
}
