import "package:flutter/material.dart";
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/widgets/buttons.dart';
import 'package:larapay/ui/widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          Text('Join Us to Unlock\nYour Growth',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // FUll NAME INPUT
                const CustomFormField(titlle: 'Full Name'),
                const SizedBox(height: 16),
                // EMAIL INPUT
                const CustomFormField(titlle: 'Email Address'),
                const SizedBox(height: 16),
                // PASSWORD INPUT
                const CustomFormField(titlle: 'Password', obscureText: true),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(title: 'Continue', onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomTextButton(
              title: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              }),
        ],
      ),
    );
  }
}
