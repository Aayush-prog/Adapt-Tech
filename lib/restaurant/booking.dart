import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Booking extends StatelessWidget {
  Booking({super.key});
  List<DateTime?> _dates = [
    DateTime.now(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[350], borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text("Book Now"),
          CalendarDatePicker2(
            config: CalendarDatePicker2Config(),
            value: _dates,
            onValueChanged: (dates) => _dates = dates,
          )
        ],
      ),
    );
  }
}
