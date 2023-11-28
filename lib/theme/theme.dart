import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.orange,
  scaffoldBackgroundColor: Colors.white54,
  dividerColor: Colors.black,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
        color: Colors.lightGreenAccent,
        fontWeight: FontWeight.w600,
        fontSize: 30),
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w300,
      fontSize: 20,
    ),
  ),
);
