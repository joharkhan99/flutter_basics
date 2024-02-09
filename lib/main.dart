import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String name = "Johar Khan";
  int age = 23;
  double pi = 3.14;
  bool isBeginner = true;

  /*
    -> Basic Math Operators
    + Addition  (1+1=2)
    - Subtraction (2-1=1)
    * Multiplication (2*2=4)
    / Division (4/2=2)
    % Modulus (5%2=1)

    -> Comparison Operators
    == Equal to (1==1) true
    != Not equal to (1!=2) true
    > Greater than (2>1) true
    < Less than (1<2) true
    >= Greater than or equal to (2>=2) true
    <= Less than or equal to (1<=2) true

    -> Logical Operators
    && And (true && true) true
    || Or (true || false) true
    ! Not (!true) false

    -> Control Flow
    if (condition) {
      // code to be executed if the condition is true
    } else {
      // code to be executed if the condition is false
    }

    -> Switch Case
    switch (expression) {
      case value1:
        // code to be executed if expression is equal to value1
        break;
      case value2:
        // code to be executed if expression is equal to value2
        break;
      default:
        // code to be executed if expression doesn't match any value
    }

    -> Loop
    for (int i = 0; i < 5; i++) {
      // code to be executed
    }
    while (condition) {
      // code to be executed
    }
    break; // to stop the loop

    -> Function

    -> Data Structure
    List, Map, Set
  */

  List data = [1, 2, "Johar", 3.14, true];
  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> names = ["Johar", "Khan", "Ali"];

  Map user = {
    "name": "Kamran butt",
    "age": 23,
    "isBeginner": true,
  };

  void greet() {
    // print("Hello, I am Johar Khan");
    for (int i = 0; i < data.length; i++) {
      // print(data[i]);
    }
  }

  int add(int a, int b) {
    // print(user["name"]);
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    // greet();
    // print(add(20, 3));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber.shade200,
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(20),
            // child: Text(
            //   "Hello, I am Johar Khan",
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white,
            //   ),
            // ),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
