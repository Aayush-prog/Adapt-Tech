import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(child: Text("Menu")),
          ElevatedButton(onPressed: () {}, child: Text("See more menu")),
        ],
      ),
    );
  }
}
