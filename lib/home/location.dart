import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';

String? lat;
String? long;

class Location extends StatefulWidget {
  Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Future<Position> _determinePosition() async {
    Position userLocation;
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    userLocation = await Geolocator.getCurrentPosition();
    lat = userLocation.latitude.toString();
    long = userLocation.longitude.toString();
    userAddress(userLocation.latitude, userLocation.longitude);
    return await Geolocator.getCurrentPosition();
  }

  String? userStreet;

  int? userStrtNum;

  String? userCity;

  void userAddress(double lat, double long) async {
    // List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    // print(placemarks[2]);
    GeoCode geoCode = GeoCode(apiKey: "221778540976738492969x47892");

    Address add =
        await geoCode.reverseGeocoding(latitude: lat, longitude: long);
    userCity = add.city;
    userStreet = add.streetAddress;
    userStrtNum = add.streetNumber;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _determinePosition();
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [Icon(Icons.location_on), Text('$lat , $long')],
        )
      ]),
    );
  }
}
