import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const SizedBox(height: 100),
      Column(
        children: [
          Image.asset("assets/images/logo.png"),
          const Text("One Byte Foods",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              )),
          const Text("Where Every Flavor Tells A Story",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
      const SizedBox(height: 200),
      Container(
        margin: const EdgeInsets.only(top: 100),
        width: 250,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(249, 170, 51, 1),
            borderRadius: BorderRadius.circular(30)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Get Started",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ]);
  }
}
