import 'dart:async';

import 'package:flutter/material.dart';

List imagesList = [
  'assets/IMG01.png',
  'assets/IMG02.png',
  'assets/IMG03.png',
  'assets/IMG04.png',
  'assets/IMG05.png',
];

List<Widget> carouselItems = imagesList
    .map(
      (imageUrl) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    )
    .toList();

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late final PageController pageController;
  int pageIndex = 0;
  int selectedIndex = 0;
  Timer? carouselTimer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 2), (timer) {
      if (pageIndex == imagesList.length) {
        pageIndex = 0;
      }
      pageController.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOutCirc,
      );
      pageIndex++;
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {},
                  onPanDown: (d) {
                    carouselTimer?.cancel();
                    carouselTimer = null;
                  },
                  onPanCancel: () {
                    carouselTimer = getTimer();
                  },
                  child: PageView(
                    controller: pageController,
                    children: carouselItems,
                    onPageChanged: (int page) {
                      setState(() {
                        selectedIndex = page;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
