import 'dart:js_util';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          title: Text('Practice App'),
          backgroundColor: Colors.amber[700],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/quiz-retry.png'),
                    radius: 60.0,
                  ),
                ),
                Divider(
                    height: 60.0,
                    color: Colors.black,
                    thickness: 0.5,
                    endIndent: 30.0),
                Text('NAME',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text('TAESOO',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30.0,
                ),
                Text('POWER LEVEL',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                    )),
                Text('34',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.check),
                    SizedBox(width: 10.0),
                    Text('using Lightsaber',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.check),
                    SizedBox(width: 10.0),
                    Text('test text 2',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.check),
                    SizedBox(width: 10.0),
                    Text('text text 3',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                  ],
                ),
              ],
            )));
  }
}
