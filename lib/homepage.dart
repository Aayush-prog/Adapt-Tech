import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:one_byte_foods/home/filter.dart';
import 'package:one_byte_foods/home/location.dart';
import 'package:one_byte_foods/home/luxury.dart';
import 'package:one_byte_foods/home/offers.dart';
import 'package:one_byte_foods/home/restaurant.dart';
import 'package:one_byte_foods/home/search.dart';
import 'package:one_byte_foods/login.dart';

class Home extends StatelessWidget {
  Home({super.key});
  // String searchedContent = "";

  @override
  Widget build(BuildContext context) {
    print("already routed");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
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
          // Location(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60),
            child:
            Search(),
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
          const Row(
            children: [Restaurant()],
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
                Row(
                  children: [
                    Restaurant(),
                  ],
                ),
              ],
            ),
          ),
          const LuxuryExp(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Reservation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        useLegacyColorScheme: true,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.grey[350],
      ),
    );
  }
}
