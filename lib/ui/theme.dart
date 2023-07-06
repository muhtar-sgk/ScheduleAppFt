import 'package:flutter/material.dart';

const MaterialColor bluishClr = MaterialColor(_bluishclrPrimaryValue, <int, Color>{
  50: Color(0xFFEAEBFC),
  100: Color(0xFFCACEF8),
  200: Color(0xFFA7ADF4),
  300: Color(0xFF838CEF),
  400: Color(0xFF6973EB),
  500: Color(_bluishclrPrimaryValue),
  600: Color(0xFF4752E5),
  700: Color(0xFF3D48E2),
  800: Color(0xFF353FDE),
  900: Color(0xFF252ED8),
});
const int _bluishclrPrimaryValue = 0xFF4E5AE8;

const MaterialColor darkGreyClr = MaterialColor(_darkgreyclrPrimaryValue, <int, Color>{
  50: Color(0xFFE3E3E3),
  100: Color(0xFFB8B8B8),
  200: Color(0xFF898989),
  300: Color(0xFF595959),
  400: Color(0xFF363636),
  500: Color(_darkgreyclrPrimaryValue),
  600: Color(0xFF101010),
  700: Color(0xFF0D0D0D),
  800: Color(0xFF0A0A0A),
  900: Color(0xFF050505),
});
const int _darkgreyclrPrimaryValue = 0xFF121212;

const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFFF4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primarySwatch: primaryClr,
    brightness: Brightness.light,
  );
  
  static final dark = ThemeData(
    primarySwatch: darkGreyClr,
    brightness: Brightness.dark,
  );
}
