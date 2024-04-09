import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  String searchedContent = "";

  Search({super.key, required String searchedContent});

  @override
  State<Search> createState() => _SearchState();
}

TextEditingController searchTextChange = TextEditingController();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      child: TextField(
        controller: searchTextChange,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "Search your favorite restaurant",
          suffixIcon: InkWell(
              onTap: () {
                print(searchTextChange.text);
                searchTextChange.text = "";
              },
              child: Icon(Icons.search)),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        ),
      ),
    );
  }
}
