import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen2'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          RaisedButton(
            color: Colors.red,
            child: Text('Go to Screen 1'),
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
