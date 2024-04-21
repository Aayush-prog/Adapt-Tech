import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:one_byte_foods/home/filter.dart';
import 'package:one_byte_foods/home/location.dart';
import 'package:one_byte_foods/home/luxury.dart';
import 'package:one_byte_foods/home/offers.dart';
import 'package:one_byte_foods/home/restaurant.dart';
import 'package:one_byte_foods/home/search.dart';
import 'package:one_byte_foods/user/login.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String searchedContent = "";
  @override
  Widget build(BuildContext context) {
    print("already routed");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Location(),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UserLogin()));
              },
              child: const Icon(Icons.person))
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60),
            child: Search(),
          ),
          const Row(
            children: [
              FilterRestaurants(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(children: [
              Text(
                "Restaurant near you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ]),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: const Row(
              children: [Restaurant(), Restaurant(), Restaurant()],
            ),
          ),
          const Offers(),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Need a table now??",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Restaurant(),
                      Restaurant(),
                      Restaurant(),
                      Restaurant(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const LuxuryExp(),
        ],
      ),
    );
  }
}
