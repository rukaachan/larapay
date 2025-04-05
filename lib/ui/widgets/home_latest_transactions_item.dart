import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';

class HomeLatestTransactionsItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String time;
  final String value;
  const HomeLatestTransactionsItem({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.time,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 18),
        child: Row(
          children: [
            Image.asset(iconUrl, width: 48),
            const SizedBox(
              width: 16,
            ),
            // Use Expanded to fill the remaining space
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    time,
                    style: greyTextStyle.copyWith(fontSize: 12),
                  )
                ],
              ),
            ),
            Text(
              value,
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            )
          ],
        ));
  }
}
