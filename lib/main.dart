import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: 100, color: Colors.white, child: Text('Container 1')),
            SizedBox(
              width: 30.0,
            ),
            Container(
                height: 100, color: Colors.blue, child: Text('Container 2')),
            SizedBox(
              height: 30.0,
            ),
            Container(
                height: 100, color: Colors.red, child: Text('Container 3')),
          ],
        )));
  }
}
