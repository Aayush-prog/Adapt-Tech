import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:one_byte_foods/restaurant/restaurantPage.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 4,
        child: Container(
          child: InkWell(
            enableFeedback: true,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RestaurantPage()))
            },
            child:
                // child: Container(
                //     padding: EdgeInsets.all(20),
                //     decoration: BoxDecoration(
                //       color: Colors.grey[350],
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     child:
                Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Image"),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cuisine"),
                        Row(
                          children: [Icon(Icons.stars), Text("4.1")],
                        )
                      ]),
                  Text(
                    "Restaurant Name",
                  ),
                  Text("Location"),
                  Container(
                    child: Column(
                      children: [Text("Discount Offers")],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
