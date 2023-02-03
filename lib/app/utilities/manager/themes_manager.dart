import 'package:flutter/material.dart';
import 'package:zaki/app/utilities/manager/style_manager.dart';
import 'package:zaki/app/utilities/manager/values_manager.dart';

import 'colors_maneger.dart';
import 'font_manager.dart';

ThemeData getThemeDataManager() {
  return ThemeData(
      //main theme
      primaryColor: ColorsManeger.kPrimaryColor,
      primaryColorLight: ColorsManeger.kLightPrimaryColor,
      primaryColorDark: ColorsManeger.kDarkPrimaryColor,
      disabledColor: ColorsManeger.kGrayColor1,
      splashColor: ColorsManeger.kGrayColor2, // ripple effect color on button

      //cardtheme
      cardTheme: const CardTheme(
          color: ColorsManeger.kWhiteColor,
          shadowColor: ColorsManeger.kGrayColor,
          elevation: 4),

      // app bar theme
      appBarTheme: AppBarTheme(
          elevation: AppSize.s4,
          centerTitle: true,
          backgroundColor: ColorsManeger.kPrimaryColor,
          shadowColor: ColorsManeger.kLightPrimaryColor,
          titleTextStyle: getRegular(
              size: SizeFontManager.s16, color: ColorsManeger.kWhiteColor)),

      //text theme
      textTheme: TextTheme(
          displayLarge: getLight(
              color: ColorsManeger.kWhiteColor, size: SizeFontManager.s22),
          headlineLarge: getSemilBold(
              color: ColorsManeger.kDarkGrayColor, size: SizeFontManager.s16),
          titleMedium: getMedium(
              color: ColorsManeger.kLightGrayColor, size: SizeFontManager.s14),
          bodyLarge: getRegular(color: ColorsManeger.kGrayColor1),
          bodySmall: getRegular(color: ColorsManeger.kGrayColor)),
      // input decoration theme (text form field)

      buttonTheme: const ButtonThemeData(
          disabledColor: ColorsManeger.kGrayColor1,
          buttonColor: ColorsManeger.kPrimaryColor,
          splashColor: ColorsManeger.kLightPrimaryColor,
          shape: StadiumBorder()),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegular(
                  color: ColorsManeger.kWhiteColor, size: SizeFontManager.s17),
              backgroundColor: ColorsManeger.kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))));
}
