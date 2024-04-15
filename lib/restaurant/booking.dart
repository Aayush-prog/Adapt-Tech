import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Booking extends StatefulWidget {
  Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<DateTime?> _dates = [
    DateTime.now(),
  ];
  DateTime? selectedDate;

  List<String> size = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  String dropdownValue = "1";

  List<String> time = ["9 am", "10 am", "11 am", "12 pm", "1 pm"];
  String selectedTime = "9 am";

  String _getValueText(
    List<DateTime?> values,
  ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');
    return valueText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Book Now"),
          Text("Select your party size"),
          DropdownButton(
              underline: Container(
                height: 2,
                color: Colors.black, // Set the underline color here
              ),
              hint: SizedBox(width: 300),
              value: dropdownValue,
              items: size.map<DropdownMenuItem<String>>((String value) {
                print(value);
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              }),
          Row(
            children: [
              Column(children: [
                Text("Select date"),
                Row(
                  children: [
                    Text(_getValueText(_dates)),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return CalendarDatePicker2(
                                config: CalendarDatePicker2Config(),
                                value: _dates,
                                onValueChanged: (dates) {
                                  setState(() {
                                    _dates = dates;
                                  });

                                  Navigator.pop(context);
                                });
                            // Close the bottom sheet after selecting a date
                          },
                        );
                      },
                      child: Icon(Icons.calendar_month),
                    ),
                  ],
                )
              ]),
              SizedBox(width: 90),
              Column(
                children: [
                  Text("Select Time"),
                  DropdownButton(
                      underline: Container(
                        height: 2,
                        color: Colors.black, // Set the underline color here
                      ),
                      value: selectedTime,
                      items: time.map<DropdownMenuItem<String>>((String value) {
                        print(value);
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedTime = value!;
                        });
                      }),
                ],
              )
            ],
          )
        ]));
  }
}
