import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: 100, color: Colors.white, child: const Text('Container 1')),
            const SizedBox(
              width: 30.0,
            ),
            Container(
                height: 100, color: Colors.blue, child: const Text('Container 2')),
            const SizedBox(
              height: 30.0,
            ),
            Container(
                height: 100, color: Colors.red, child: const Text('Container 3')),
          ],
        )));
  }
}
