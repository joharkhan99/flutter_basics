import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/first_page.dart';
import 'package:flutter_basics/pages/profile_page.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // to keep track of the selected index at bottom navigation bar
  int selectedIndex = 0;

  // update the selected index
  void updateNavigationBarIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List _pages = [
    FirstPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: updateNavigationBarIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
