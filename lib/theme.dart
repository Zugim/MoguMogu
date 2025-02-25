import "package:flutter/material.dart";

class AppColors {
  static Color primaryColor = Color.fromRGBO(255, 173, 173, 1);
  static Color secondaryColor = Color.fromRGBO(255, 214, 214, 1);
  static Color tertiaryColor = Color.fromRGBO(255, 235, 235, 1);
  static Color accentColor = Color.fromRGBO(141, 80, 81, 1);
  static Color textColor = Color.fromRGBO(85, 67, 72, 1);
}

ThemeData primaryTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  scaffoldBackgroundColor: AppColors.tertiaryColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
  ),

  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    margin: EdgeInsets.only(bottom: 16),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    labelStyle: TextStyle(color: AppColors.textColor),
    prefixIconColor: AppColors.textColor,
  ),
);
