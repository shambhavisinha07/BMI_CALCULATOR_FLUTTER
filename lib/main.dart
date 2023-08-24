import 'package:flutter/material.dart';


import 'home_screen.dart';
import 'result_screen.dart';  // Make sure to import the ResultScreen class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.pink,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
      initialRoute: HomeScreen.routeName,  // Set the initial route
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ResultScreen.routeName: (context) => ResultScreen(),
      },
    );
  }
}
