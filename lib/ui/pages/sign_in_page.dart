import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
          Text('Sign In &\nGrow Your Finance',
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
                // EMAIL INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          contentPadding: const EdgeInsets.all(12)),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                // PASSWORD INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true, // Hide Password
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          contentPadding: const EdgeInsets.all(12)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: blueTextStyle,
                    )),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: purpleColour,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(56))),
                    child: Text(
                      'Sign In',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            height: 24,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Text(
                'Create New Account',
                style: greyTextStyle.copyWith(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
