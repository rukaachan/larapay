import "package:flutter/material.dart";
import "package:larapay/shared/theme.dart";
import "package:larapay/ui/widgets/buttons.dart";

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Akun Berhasil Dibuat',
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
            "Grow you finance start\ntogether with us",
            style: greyTextStyle.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomFilledButton(
              width: 183,
              title: 'Get Started',
              onPressed: () {
                // Navigate to home page
                // Remove all previous page
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              }),
        ],
      )),
    );
  }
}
