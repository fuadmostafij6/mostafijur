import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:flutter/scheduler.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();

  static final ThemeData lightTheme = ThemeData(
    // brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme:  AppBarTheme(
      backgroundColor: lightBackgroundColor,
      iconTheme: IconThemeData(color: lightTextColor),
      titleTextStyle: TextStyle(color: lightTextColor, fontSize: 20),
    ),
    textTheme:  TextTheme(
      labelLarge: TextStyle(color: lightTextColor),
    ),
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      background: lightBackgroundColor,
      onPrimary: Colors.white,
      onBackground: lightTextColor,
    ).copyWith(
      secondary: Colors.blueAccent,
      brightness: Brightness.light,    // ← now matches
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: lightTextColor),
    ),

  );

  static final ThemeData darkTheme = ThemeData(

    fontFamily: 'Poppins',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme:  AppBarTheme(
      backgroundColor: darkBackgroundColor,
      iconTheme: IconThemeData(color: darkTextColor),
      titleTextStyle: TextStyle(color: darkTextColor, fontSize: 20),
    ),
    textTheme:  TextTheme(
      labelLarge: TextStyle(color: lightTextColor),
    ),
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      background: lightBackgroundColor,
      onPrimary: Colors.white,
      onBackground: lightTextColor,
    ).copyWith(
      secondary: Colors.blueAccent,
      brightness: Brightness.dark,    // ← now matches
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: lightTextColor),
    ),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //
  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBack;

  //
  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}
