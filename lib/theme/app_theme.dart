import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.indigo;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    primaryColor: Colors.orange,

    //appbartheme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    //TextButton theme

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary, 
        elevation: 5
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary, 
        shape: const StadiumBorder(), 
        elevation: 0
      ),
    )
  );
}
