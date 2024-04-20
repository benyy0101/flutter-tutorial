import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            children: [1, 2, 3, 4, 5]
                .map(
                  (e) => Image.asset('assets/image_$e.jpeg', fit: BoxFit.cover),
                )
                .toList()));
  }
}

class DynamicScreen extends StatefulWidget {
  const DynamicScreen({super.key});

  @override
  State<DynamicScreen> createState() => _DynamicScreenState();
}

class _DynamicScreenState extends State<DynamicScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      int? currentPage = pageController.page?.toInt();
      if (currentPage == null) return;
      if (currentPage == 4) {
        currentPage = 0;
      } else {
        currentPage++;
      }

      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            controller: pageController,
            children: [1, 2, 3, 4, 5]
                .map(
                  (e) => Image.asset('assets/image_$e.jpeg', fit: BoxFit.cover),
                )
                .toList()));
  }
}
