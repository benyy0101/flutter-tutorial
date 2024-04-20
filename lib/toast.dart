import 'package:flutter/material.dart';
import 'package:toasty_box/toasty_box.dart';

void main() => runApp(const MyApp());

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
      appBar: AppBar(title: const Text('Toast Message'), centerTitle: true),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          ToastService.showToast(
            context,
            message: "This is a message toast 👋😎!",
          );
          print("CLIDK");
        },
        child: const Text("TOAST"),
      )),
    );
  }
}
