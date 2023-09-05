import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/IMG01.png',
    'assets/IMG02.png',
    'assets/IMG03.png',
    'assets/IMG04.png',
    'assets/IMG05.png',
  ];

  late final PageController pageController;
  int pageNumber = 0;
  Timer? carouselTimer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 2), (timer) {
      if (pageNumber == 4) {
        pageNumber = 0;
      }
      pageController.animateToPage(
        pageNumber,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNumber++;
    });
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.95,
    );
    carouselTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  pageNumber = index;
                  setState(() {});
                },
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                    animation: pageController,
                    builder: (ctx, child) {
                      return child!;
                    },
                    child: GestureDetector(
                      onTap: () {
                        // TODO: Do CERTAIN ACTIVITY
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Hello, you tapped at $index',
                              style: const TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ),
                        );
                      },
                      onPanDown: (d) {
                        carouselTimer?.cancel();
                        carouselTimer = null;
                      },
                      onPanCancel: () {
                        carouselTimer = getTimer();
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 5,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.circle,
                    size: 12,
                    color: pageNumber == index ? Colors.blue : Colors.grey.shade300,
                  ),
                ),
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
