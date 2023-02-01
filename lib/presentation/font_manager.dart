import 'package:flutter/cupertino.dart';

abstract class FamilyFontManager {
  static const String kPrimaryFontFamily = 'Montserrat';
}

abstract class WeightFontManager {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w600;
}

abstract class SizeFontManager {
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;
}
