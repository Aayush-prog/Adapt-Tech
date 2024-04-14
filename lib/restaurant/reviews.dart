import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              child: Column(
            children: [
              Row(
                children: [Text("Reviews")],
              ),
              Row(
                children: [
                  Column(
                    children: [],
                  ),
                  Column(
                    children: [Text("rating Bar")],
                  )
                ],
              ),
              Row(
                children: [Text("ratings")],
              )
            ],
          )),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 15),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Write your reviews here",
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
