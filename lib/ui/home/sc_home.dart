import 'package:flutter/material.dart';
import 'package:qonway/ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Center(
        child: CardCarousel(
          aspectRatio: 5.5 / 9,
          height: size.height * 0.8,
          width: size.width,
          viewport: 0.33,
          children: [1, 2, 3, 4, 5]
              .map(
                (item) => Container(
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 8),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
