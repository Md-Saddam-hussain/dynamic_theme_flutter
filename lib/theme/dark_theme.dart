import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(backgroundColor: Color(0xFF871717)),
  dividerTheme: DividerThemeData(color: Colors.red),
  iconTheme: IconThemeData(color: Colors.red),
  cardTheme: CardTheme(color: Color(0xFFF0F5FA)),
  colorScheme: ColorScheme.dark(
    background: Colors.black54,
    primary: Colors.grey[900]!,
    onPrimary: Colors.red,
    primaryContainer: Color(0xFFFFFFFF),
    secondary: Colors.grey[800]!,
    onSecondary: Color(0xFFEC2828),
    tertiary: Colors.white,
    onTertiary: Colors.red,
  ),
);
