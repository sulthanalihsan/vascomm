import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xff002060);
const Color secondaryColor = Color(0xff00D9D5);
const Color descTextColor = Color(0xff222222);
const Color inactiveTxtColor = Color(0xff8B8B8B);
const Color btnFormColor = Color(0xffECECEC);
const Color txtBtnColor = Color(0xff646464);

const MaterialColor materialPrimaryColor = MaterialColor(0xff309F5F, {
  50: Color.fromRGBO(0, 32, 96, .1),
  100: Color.fromRGBO(0, 32, 96, .2),
  200: Color.fromRGBO(0, 32, 96, .3),
  300: Color.fromRGBO(0, 32, 96, .4),
  400: Color.fromRGBO(0, 32, 96, .5),
  500: Color.fromRGBO(0, 32, 96, .6),
  600: Color.fromRGBO(0, 32, 96, .7),
  700: Color.fromRGBO(0, 32, 96, .8),
  800: Color.fromRGBO(0, 32, 96, .9),
  900: Color.fromRGBO(0, 32, 96, 1),
});

const Color appBg = Color(0xFFFFFDF9);
const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF000000);
const Color grey1 = Color(0xFF333333);
const Color grey2 = Color(0xFF4F4F4F);
const Color grey3 = Color(0xFF828282);
const Color grey4 = Color(0xFFBDBDBD);
const Color grey5 = Color(0xFFE0E0E0);
const Color grey6 = Color(0xFFF2F2F2);

/*
thin 100
extra-light 200
light 300
regular 400
medium 500
semibold 600
bold 700
extra-bold 800
black 900
 */

class AppTextStyle {
  static TextStyle ralewayReg({Color? color, required double fontSize}) =>
      _textStyleInter(color, fontSize, FontWeight.w400);

  static TextStyle ralewayMed({Color? color, required double fontSize}) =>
      _textStyleInter(color, fontSize, FontWeight.w500);

  static TextStyle ralewaySemiBold({Color? color, required double fontSize}) =>
      _textStyleInter(color, fontSize, FontWeight.w600);

  static TextStyle ralewayBold({Color? color, required double fontSize}) =>
      _textStyleInter(color, fontSize, FontWeight.w700);

  static TextStyle ralewayXBold({Color? color, required double fontSize}) =>
      _textStyleInter(color, fontSize, FontWeight.w800);

  static TextStyle ralewayBlack({Color? color, required double fontSize}) =>
      _textStyleInter(color, fontSize, FontWeight.w900);

  static TextStyle _textStyleInter(
      Color? color, double size, FontWeight fontWeight) {
    return GoogleFonts.raleway(
        fontWeight: fontWeight, fontSize: size, color: color ?? black);
  }
}
