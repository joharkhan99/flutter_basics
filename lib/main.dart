import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = "Click Me";

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
              onPressed: () {
                setState(() {
                  buttonText = "I was clicked";
                });
              },
              child: Text(buttonText),
            ),
          ),
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
