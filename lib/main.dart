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
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            Center(
                child: TextButton(
              child: const Text("Show me"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white, // Background color
              ),
              onPressed: () {
                ScaffoldMessenger.of(ctx)
                    .showSnackBar(SnackBar(content: Text("HI")));
              },
            ));
          },
        ));
  }
}
