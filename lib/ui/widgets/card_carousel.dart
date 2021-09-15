import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardCarousel extends StatelessWidget {
  const CardCarousel(
      {Key? key,
      required this.height,
      required this.width,
      required this.viewport,
      required this.aspectRatio,
      required this.children,
      this.enlargeCenterPage = true})
      : super(key: key);
  final double height;
  final double width;
  final double viewport;
  final double aspectRatio;
  final List<Widget> children;
  final bool enlargeCenterPage;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          aspectRatio: width / height,
          viewportFraction: viewport,
          enlargeCenterPage: true),
      items: children
          .map(
            (item) => Align(
              alignment: Alignment.center,
              child: AspectRatio(aspectRatio: aspectRatio, child: item),
            ),
          )
          .toList(),
    );
  }
}
