import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 0xff = sign that we use hex number
Color whiteColour = const Color(0xffFFFFFF);
Color blackColor = const Color(0xff14193F);
Color greyColour = const Color(0xffA4A8AE);
Color lightBackgroundColour = const Color(0xffF6F8FB);
Color darkBackgroundColour = const Color(0xff020518);
Color blueColour = const Color(0xff53C1F9);
Color purpleColour = const Color(0xff5142E6);
Color greenColour = const Color(0xff22B07D);
Color numberBackgroundColour = const Color(0xff1A1D2E);

// Text
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColour,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: greyColour,
);

TextStyle blueTextStyle = GoogleFonts.poppins(
  color: blueColour,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: greenColour,
);

// Fontweight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
