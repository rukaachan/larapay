import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';

class BankItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isSelected;

  const BankItem(
      {Key? key,
      required this.title,
      required this.imageUrl,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 18),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColour,
            border: Border.all(
                width: 2, color: isSelected ? blueColour : whiteColour)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset(imageUrl, height: 30),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              title,
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(height: 2),
            Text('50 Mins', style: greyTextStyle.copyWith(fontSize: 12)),
          ])
        ]));
  }
}
