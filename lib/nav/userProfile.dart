import 'package:flutter/material.dart';
import 'package:one_byte_foods/login.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UserLogin()));
              },
              child: const Icon(Icons.person))
        ],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 10),
                Text("Personal Information"),
                SizedBox(width: 50),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Icon(Icons.note_add),
                SizedBox(width: 10),
                Text("Reviews"),
                SizedBox(width: 50),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 10),
                Text("Settings"),
                SizedBox(width: 50),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Icon(Icons.help_outline),
                SizedBox(width: 10),
                Text("Help & Support"),
                SizedBox(width: 50),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 10),
                Text(
                  "Log Out",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
