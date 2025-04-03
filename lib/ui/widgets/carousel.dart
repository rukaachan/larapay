import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {
  final int currentIndex;
  final int index;
  final Color activeColor;
  final Color inactiveColor;

  const CarouselIndicator({
    super.key,
    required this.currentIndex,
    required this.index,
    this.activeColor = const Color(0xFF554AF0),
    this.inactiveColor = const Color(0xFFF1F1F9),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index ? activeColor : inactiveColor,
      ),
    );
  }
}
