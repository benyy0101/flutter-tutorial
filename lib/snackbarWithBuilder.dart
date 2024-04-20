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
        appBar: AppBar(
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) => Center(
              child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white, // Background color
            ),
            onPressed: () {
              ScaffoldMessenger.of(ctx)
                  .showSnackBar(const SnackBar(content: Text("HI")));
            },
            child: const Text("Show me"),
          )),
        ));
  }
}
