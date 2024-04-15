import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
              color: Colors.grey[350],
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    color: Colors.amber[600],
                    child: Text(
                      "Reviews",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Overall Ratings and reviews"),
                          Text(
                              "Reviews can be made only by the diners who have eaten at this restaurant"),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber[400],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber[400],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber[400],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber[400],
                              ),
                              Icon(Icons.star)
                            ],
                          )
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [Text("4"), Text("Food")],
                        ),
                        VerticalDivider(
                          width: 30,
                          thickness: 50,
                          // indent: 20,
                          // endIndent: 0,
                          color: Colors.black,
                        ),
                        Column(
                          children: [Text("4.5"), Text("Service")],
                        ),
                        VerticalDivider(
                          width: 30,
                          thickness: 50,
                          // indent: 20,
                          // endIndent: 0,
                          color: Colors.black,
                        ),
                        Column(
                          children: [Text("4"), Text("Ambience")],
                        ),
                      ],
                    ),
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
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 200,
            child: ElevatedButton(onPressed: () {}, child: Text("Post")),
          )
        ],
      ),
    );
  }
}
