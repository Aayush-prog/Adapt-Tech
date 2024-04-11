import 'package:flutter/material.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Restaurant Name"),
          Row(children: [Icon(Icons.pin_drop), Text("Restaurant Location")]),
          Row(
            children: [Icon(Icons.restaurant), Text("Cuisine")],
          ),
          Row(children: [Icon(Icons.attach_money), Text("Average prices")]),
          Row(
            children: [Icon(Icons.star), Text("rating")],
          )
        ],
      ),
    );
  }
}
