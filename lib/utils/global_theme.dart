import 'package:flutter/material.dart';

ThemeData globalTheme ()=>ThemeData (
  fontFamily: 'Georgia',
  splashColor: Colors.yellow,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.orange,
  ).copyWith(
    secondary: Colors.green,
  ),

  textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      headline3: TextStyle(fontSize: 14.0, fontFamily: "hind",)
  ),
);