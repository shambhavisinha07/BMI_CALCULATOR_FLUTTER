import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const routeName = '/result';


  @override
  Widget build(BuildContext context) {
  final args = ModalRoute.of(context)?.settings?.arguments;
  final double bmi = args is double ? args : 0.0;

  return Scaffold(
  appBar: AppBar(title: Text('BMI Result')),
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Text(
  'Your BMI is:',
  style: Theme.of(context).textTheme.headline6,
  ),
  SizedBox(height: 16),
  Text(
  bmi.toStringAsFixed(2),
  style: TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.bold,
  color: Theme.of(context).accentColor,
  ),
  ),
  ],
  ),
  ),
  );
  }
  }
