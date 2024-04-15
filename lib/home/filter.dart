import 'package:flutter/material.dart';

class FilterRestaurants extends StatelessWidget {
  const FilterRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [Text('Image'), Text("Nepali")],
      ),
    );
  }
}
