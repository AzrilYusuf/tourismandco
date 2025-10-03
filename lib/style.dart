// This is the file where you can add your own styles to the app.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const largeTextSize = 26.0;
const mediumTextSize = 20.0;
const bodyTextSize = 16.0;

TextStyle fontNameDefault = GoogleFonts.montserrat();

TextStyle appBarTextStyle = fontNameDefault.copyWith(
  fontSize: mediumTextSize,
  fontWeight: FontWeight.w300,
);

TextStyle titleTextStyle = fontNameDefault.copyWith(
  fontSize: largeTextSize,
  fontWeight: FontWeight.w300,
);

TextStyle bodyTextStyle = fontNameDefault.copyWith(
  fontSize: bodyTextSize,
  fontWeight: FontWeight.w300,
);
