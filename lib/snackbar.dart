import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

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
        appBar: AppBar(
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: const MySnackBar());
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('HI',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,
          duration: Duration(milliseconds: 1000),
        ));
      },
      child: const Text("THISISTHEBUTTON"),
    ));
  }
}
