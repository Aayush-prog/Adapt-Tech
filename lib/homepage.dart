import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:one_byte_foods/home/filter.dart';
import 'package:one_byte_foods/home/location.dart';
import 'package:one_byte_foods/home/luxury.dart';
import 'package:one_byte_foods/home/offers.dart';
import 'package:one_byte_foods/home/restaurant.dart';
import 'package:one_byte_foods/home/search.dart';
import 'package:one_byte_foods/nav.dart';

class Home extends StatelessWidget {
  Home({super.key});
  String searchedContent = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Location(),
        Search(
          searchedContent: searchedContent,
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
