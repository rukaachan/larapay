import 'dart:async';

import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // will be run first when splash page is action
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Navigate to onboarding page
    Timer(const Duration(seconds: 2), () {
      // Remove splash page, and navigate to onboarding page
      // Remove all previous page
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColour,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/img_logo_dark.png')),
          ),
        ),
      ),
    );
  }
}
