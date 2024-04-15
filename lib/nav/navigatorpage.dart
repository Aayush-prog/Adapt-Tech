import 'package:flutter/material.dart';
import 'package:one_byte_foods/nav/favorites.dart';
import 'package:one_byte_foods/nav/homepage.dart';
import 'package:one_byte_foods/nav/searchPage.dart';
import 'package:one_byte_foods/user/userProfile.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _currentIndex = 0;
  List<Widget> _screens = [
    Home(),
    SearchPage(),
    UserProfile(),
    Favorites(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant), label: 'Reservation'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          elevation: 20,
          showUnselectedLabels: true,
          backgroundColor: Colors.amber[700],
        ));
  }
}
