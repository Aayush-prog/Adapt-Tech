import 'package:flutter/material.dart';
import 'package:one_byte_foods/home/restaurant.dart';
import 'package:one_byte_foods/user/login.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favorites"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UserLogin()));
              },
              child: const Icon(Icons.person))
        ],
      ),
      body: ListView(children: [
        Restaurant(),
        Restaurant(),
        Restaurant(),
        Restaurant(),
        Restaurant(),
      ]),
    );
  }
}
