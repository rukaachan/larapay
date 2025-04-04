import "package:flutter/material.dart";
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/widgets/buttons.dart';

class SignUpSetKtpPage extends StatelessWidget {
  const SignUpSetKtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColour,
      body: ListView(
        // Added: padding in horizontal space
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 50, bottom: 100),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_logo_light.png'))),
          ),
          Text('Verify Your\nIdentity',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColour),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: lightBackgroundColour),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text('Passport/ID Card',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium)),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(title: 'Continue', onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomTextButton(
              title: 'Skip for Now',
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up-success');
              }),
        ],
      ),
    );
  }
}
