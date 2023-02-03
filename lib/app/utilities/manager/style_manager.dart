import 'package:flutter/cupertino.dart';

import 'font_manager.dart';

TextStyle _getStyle(
    {required double size,
    required FontWeight fontWeight,
    required Color color}) {
  return TextStyle(
      fontSize: size,
      fontFamily: FamilyFontManager.kPrimaryFontFamily,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getBold({double size = SizeFontManager.s12, required Color color}) {
  return _getStyle(
      size: size, fontWeight: WeightFontManager.bold, color: color);
}

TextStyle getLight({double size = SizeFontManager.s12, required Color color}) {
  return _getStyle(
      size: size, fontWeight: WeightFontManager.light, color: color);
}

TextStyle getMedium({double size = SizeFontManager.s12, required Color color}) {
  return _getStyle(
      size: size, fontWeight: WeightFontManager.medium, color: color);
}

TextStyle getRegular(
    {double size = SizeFontManager.s12, required Color color}) {
  return _getStyle(
      size: size, fontWeight: WeightFontManager.regular, color: color);
}

TextStyle getSemilBold(
    {double size = SizeFontManager.s12, required Color color}) {
  return _getStyle(
      size: size, fontWeight: WeightFontManager.semiBold, color: color);
}
