import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.grey[350]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Icon(Icons.home), Text("Home")],
            ),
            Column(
              children: [Icon(Icons.search), Text("Search")],
            ),
            Column(
              children: [Icon(Icons.restaurant), Text("Reservation")],
            ),
            Column(
              children: [Icon(Icons.favorite), Text("Favorites")],
            ),
            Column(
              children: [Icon(Icons.person_2), Text("Profile")],
            ),
          ],
        ));
  }
}
