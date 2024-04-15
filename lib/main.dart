import 'package:flutter/material.dart';
import 'package:one_byte_foods/home/search.dart';
import 'package:one_byte_foods/nav/landingpage.dart';
import 'package:one_byte_foods/restaurant/restaurantPage.dart';

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
          padding: const EdgeInsets.only(top: 30),
          // height: double.infinity,
          // width: double.infinity,
          // decoration: const BoxDecoration(
          //   color: Colors.white,
          // ),
          children: [
            // UserLogin(),
            LandingPage(),
            // Home(),
            // RestaurantPage(),
          ]),
      // bottomNavigationBar: Nav(),
    ));
  }
}
