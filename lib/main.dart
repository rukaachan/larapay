import 'package:flutter/material.dart';
import 'package:larapay/ui/pages/onboarding_page.dart';
import 'package:larapay/ui/pages/sign_in_page.dart';
import 'package:larapay/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Initial route, can be handle multiple routes
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
      },
    );
  }
}
