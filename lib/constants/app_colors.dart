import 'package:flutter/material.dart';

class AppColors {
  static final palate1 = Color(0xff555B6E);
  static final palate2 = Color(0xFF89B0AE);
  static final palate3 = Color(0xFFBEE3DB);
  static final palate4 = Color(0xFFFAF9F9);
  static final palate5 = Color(0xFFFFD6BA);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.palate4,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.palate3),
    primaryColor: AppColors.palate1,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.palate1),
      bodyMedium: TextStyle(color: AppColors.palate2),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.palate1,
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.palate5,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.palate1,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.palate1),
    primaryColor: AppColors.palate4,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.palate4),
      bodyMedium: TextStyle(color: AppColors.palate3),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.palate5,
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.palate5,
    ),
  );
}
