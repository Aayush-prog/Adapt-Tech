import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  const ImageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text("Photos based on community"),
                Row(children: [Text("1"), Text("2")]),
                Row(children: [Text("3"), Text("4")]),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("See more photos")),
        ],
      ),
    );
  }
}
