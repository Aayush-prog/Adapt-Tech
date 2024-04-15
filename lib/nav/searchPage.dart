import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:one_byte_foods/home/search.dart';
import 'package:one_byte_foods/user/login.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Search"),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserLogin()));
                },
                child: const Icon(Icons.person))
          ],
        ),
        body: Container(
            child: Column(
          children: [
            Search(),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.restaurant),
                  SizedBox(width: 10),
                  Text("Search All Restaurants",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Continue Exploring",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width: 10),
                        Text(
                          "Restaurant Name",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width: 10),
                        Text(
                          "Restaurant Name",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width: 10),
                        Text(
                          "Restaurant Name",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width: 10),
                        Text(
                          "Restaurant Name",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Community Trends",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.percent_outlined),
                      SizedBox(width: 10),
                      Text(
                        "Offers",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text(
                        "Best Rated",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.restaurant),
                      SizedBox(width: 10),
                      Text(
                        "Cuisine",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.recommend),
                      SizedBox(width: 10),
                      Text(
                        "One Byte Food Recommends",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
