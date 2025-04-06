import "package:flutter/material.dart";
import "package:larapay/shared/theme.dart";
import "package:larapay/ui/widgets/buttons.dart";

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nice Update',
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
            "Your data is safe with\nour system",
            style: greyTextStyle.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomFilledButton(
              width: 183,
              title: 'My Profile',
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
