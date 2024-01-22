import 'package:flutter/material.dart';

class Apptheme {

  static const Color primary = Colors.indigo;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    
    primaryColor: Colors.white,

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
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      )
      
    )

  );
}
