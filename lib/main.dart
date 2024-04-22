import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'sunflower',
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 80.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'parsienne'),
              displayMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700),
              bodyLarge: TextStyle(color: Colors.white, fontSize: 30.0),
              bodyMedium: TextStyle(color: Colors.white, fontSize: 20.0))),
      home: const D_CupertinoWidget(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Page'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
          child: const Text('Go to the Second'),
        )));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FirstPage()));
          },
          child: const Text('Go to the First'),
        )));
  }
}
