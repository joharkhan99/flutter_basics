import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('App Bar Title'),
            backgroundColor: Colors.deepPurple.shade700,
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          body: Center(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Click Me"))),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.red, size: 30),
                label: 'Profile',
              )
            ],
          )),
    );
  }
}
