import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Got to Second Page"),
          onPressed: () {
            // navigate to second page
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SecondPage(),
            //   ),
            // );

            // 2nd way to navigate
            Navigator.pushNamed(context, "/secondpage");
          },
        ),
      ),
    );
  }
}
