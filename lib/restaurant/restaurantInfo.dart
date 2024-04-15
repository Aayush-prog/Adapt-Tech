import 'package:flutter/material.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Column(
        children: [
          Text("Restaurant Name"),
          SizedBox(height: 10),
          Row(children: [Icon(Icons.pin_drop), Text("Restaurant Location")]),
          SizedBox(height: 10),
          Row(
            children: [Icon(Icons.restaurant), Text("Cuisine")],
          ),
          SizedBox(height: 10),
          Row(children: [Icon(Icons.attach_money), Text("Average prices")]),
          SizedBox(height: 10),
          Row(
            children: [Icon(Icons.star), Text("rating")],
          )
        ],
      ),
    );
  }
}
