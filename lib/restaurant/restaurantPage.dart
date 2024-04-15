import 'package:flutter/material.dart';
import 'package:one_byte_foods/home/offers.dart';
import 'package:one_byte_foods/restaurant/booking.dart';
import 'package:one_byte_foods/restaurant/caraousel.dart';
import 'package:one_byte_foods/restaurant/imageGallery.dart';
import 'package:one_byte_foods/restaurant/menu.dart';
import 'package:one_byte_foods/restaurant/restaurantInfo.dart';
import 'package:one_byte_foods/restaurant/reviews.dart';
import 'package:one_byte_foods/user/login.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Restaurant Name"),
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
        body: ListView(
          children: [
            ImgCarousel(),
            RestaurantInfo(),
            Booking(),
            Offers(),
            Menu(),
            ImageGallery(),
            Reviews(),
          ],
        ));
  }
}
