import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed; // can be null or not

  const CustomFilledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // to make the button responsive
      // got width from the parent (same)
      width: width,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: purpleColour,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(56))),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed; // can be null or not

  const CustomTextButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 24,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text(
          title,
          style: greyTextStyle.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}

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
