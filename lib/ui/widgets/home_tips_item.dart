import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeTipsItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        await launchUrl(uri);
      },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: whiteColour),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                imageUrl,
                width: 155,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                    fontWeight: semiBold, overflow: TextOverflow.ellipsis),
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
