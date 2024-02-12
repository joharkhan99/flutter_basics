import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: Text("First Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple.shade200,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 50,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                // close/pop drawer first
                Navigator.pop(context);

                Navigator.pushNamed(context, "/firstpage");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                // close/pop drawer first
                Navigator.pop(context);

                Navigator.pushNamed(context, "/secondpage");
              },
            )
          ],
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Got to Second Page"),
      //     onPressed: () {
      //       // navigate to second page
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondPage(),
      //       //   ),
      //       // );

      //       // 2nd way to navigate
      //       Navigator.pushNamed(context, "/secondpage");
      //     },
      //   ),
      // ),
    );
  }
}
