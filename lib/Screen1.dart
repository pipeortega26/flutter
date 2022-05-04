import 'Screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen1'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          RaisedButton(
            color: Colors.red,
            child: Text('Go to Screen 2'),
            onPressed: () {
              //Navigate to Screen 1
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Screen2();
                  },
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
