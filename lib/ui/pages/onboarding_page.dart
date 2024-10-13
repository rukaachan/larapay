import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/pages/sign_in_page.dart';
import 'package:larapay/ui/widgets/buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentCarousel = 0;
  CarouselSliderController carouselController = CarouselSliderController();

  //  List for carousel when it changed/next
  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedoom',
    'Start Together'
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColour,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Created Slider
              CarouselSlider(
                items: [
                  Image.asset(
                    'assets/img_onboarding1.png',
                    height: 331,
                  ),
                  Image.asset(
                    'assets/img_onboarding2.png',
                    height: 331,
                  ),
                  Image.asset(
                    'assets/img_onboarding3.png',
                    height: 331,
                  ),
                ],
                carouselController: carouselController,
                options: CarouselOptions(
                  height: 331,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentCarousel = index;
                    });
                  },
                ),
              ),
              // Create Box-
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
                decoration: BoxDecoration(
                    color: whiteColour,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Text(
                      titles[currentCarousel],
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
                      subtitles[currentCarousel],
                      style: greyTextStyle.copyWith(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: currentCarousel == 2 ? 38 : 50,
                    ),
                    currentCarousel == 2
                        ? Column(
                            children: [
                              CustomFilledButton(
                                  title: 'Get Started', onPressed: () {}),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignInPage()));
                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero),
                                  child: Text(
                                    'Sign In',
                                    style: greyTextStyle.copyWith(fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentCarousel == 0
                                        ? blueColour
                                        : lightBackgroundColour),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentCarousel == 1
                                        ? blueColour
                                        : lightBackgroundColour),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentCarousel == 2
                                        ? blueColour
                                        : lightBackgroundColour),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 150,
                                height: 50,
                                child: TextButton(
                                  onPressed: () {
                                    carouselController.nextPage();
                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: purpleColour,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(56))),
                                  child: Text(
                                    'Continue',
                                    style: whiteTextStyle.copyWith(
                                        fontSize: 16, fontWeight: semiBold),
                                  ),
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
