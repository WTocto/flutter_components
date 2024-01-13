import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.blue;

  static final ThemeData ligthTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.orange,

    //appbartheme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    //TextButton theme

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    )
  );
}