import 'dart:ffi';

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
  int bottomNavIndex = 0;

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
            child: bottomNavIndex == 0
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                                  buttonText = "I was clicked";
                                });
                              },
                              child: Text(buttonText),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  buttonText = "I was clicked";
                                });
                              },
                              child: Text(buttonText),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                : Image.asset("images/lotus-leaf.jpg"),
            // : Image.network(
            //     "https://images.pexels.com/photos/11292498/pexels-photo-11292498.jpeg"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              )
            ],
            selectedLabelStyle: const TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
            ),
            currentIndex: bottomNavIndex,
            onTap: (index) {
              setState(() {
                bottomNavIndex = index;
              });
            },
          )),
    );
  }
}
