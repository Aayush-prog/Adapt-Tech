import 'package:flutter/material.dart';
import 'package:one_byte_foods/nav/homepage.dart';
import 'package:one_byte_foods/nav/navigatorpage.dart';

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
      const SizedBox(height: 300),
      ElevatedButton(
          onPressed: () {
            print("pressed");
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              print("inside route");
              return MyWidget();
            }));
          },
          child: const Text("Let's Get Started")),
    ]);
  }
}
