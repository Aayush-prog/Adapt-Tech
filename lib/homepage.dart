import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:one_byte_foods/home/filter.dart';
import 'package:one_byte_foods/home/luxury.dart';
import 'package:one_byte_foods/home/offers.dart';
import 'package:one_byte_foods/home/restaurant.dart';
import 'package:one_byte_foods/nav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Icon(Icons.location_on),
                Text("Address"),
              ],
            ),
            Icon(Icons.person_2)
          ]),
        ),
        Container(
          width: 300,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Search your favorite restaurant",
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        Row(
          children: [
            FilterRestaurants(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(children: [
            Text(
              "Restaurant near you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ]),
        ),
        Row(
          children: [Restaurant()],
        ),
        Offers(),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Need a table now??",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              ),
              Row(
                children: [
                  Restaurant(),
                ],
              ),
            ],
          ),
        ),
        LuxuryExp(),
        Nav(),
      ],
    );
  }
}
