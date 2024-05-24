import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(backgroundColor: Color(0xFFA2C9EF),
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black,fontSize: 20)),
    dividerTheme : DividerThemeData(color: Colors.black),
    cardTheme: CardTheme(color: Colors.lightBlue),
    colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey[200]!,
    primaryContainer: Color(0xFFDCDEE0),
    secondary: Colors.grey[300]!,
        onSecondary: Color(0xFF5496D7),
        tertiary: Colors.black,
        onTertiary: Color(0xFF5496D7),
    )
);