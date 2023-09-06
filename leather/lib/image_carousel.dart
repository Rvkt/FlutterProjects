import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imgList;
  const ImageCarousel({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.5,
        enlargeCenterPage: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        aspectRatio: 16 / 9,
        viewportFraction: 1,
      ),
      items: imgList.map(
            (item) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(
                item,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              );
            },
          );
        },
      ).toList(),
    );
  }
}
