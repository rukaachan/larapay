import "package:flutter/material.dart";
import "package:larapay/shared/theme.dart";
import "package:larapay/ui/widgets/buttons.dart";

class TopUpSuccess extends StatelessWidget {
  const TopUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Top Up\nWallet Berhasil',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            "Use the money wisely and\ngrow your finance",
            style: greyTextStyle.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomFilledButton(
              width: 183,
              title: 'Back to Home',
              onPressed: () {
                // Navigate to home page
                // Remove all previous page
                Navigator.pushNamedAndRemoveUntil(
                    context, '/profile', (route) => false);
              }),
        ],
      )),
    );
  }
}
