import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(255, 171, 6, 171),
          ),
          accentColor: Colors.purple,
          scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: InputPage(),
    );
  }
}
