import 'package:flutter/material.dart';
import 'package:newproject/result_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double height = double.parse(heightController.text);
                double weight = double.parse(weightController.text);
                double bmi = weight / ((height / 100) * (height / 100));

                Navigator.pushNamed(
                  context,
                  ResultScreen.routeName,
                  arguments: bmi,
                );
              },
              child: Text('Calculate BMI'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
