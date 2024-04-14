import 'package:flutter/material.dart';
import 'package:toasty_box/toasty_box.dart';

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
      appBar: AppBar(title: Text('Toast Message'), centerTitle: true),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          ToastService.showToast(
            context,
            message: "This is a message toast 👋😎!",
          );
          print("CLIDK");
        },
        child: Text("TOAST"),
      )),
    );
  }
}
