import 'package:flutter/material.dart';

ThemeData dspTheme ()=>ThemeData (
  visualDensity: VisualDensity.compact,
  fontFamily: 'Georgia',

  colorScheme: const ColorScheme.light(
    primary: Colors.green,
    secondary: Colors.orange,
  ),

  textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
      color: Colors.white),
      headline2: TextStyle(fontSize: 25.0,
          fontStyle: FontStyle.italic,
      color: Colors.red),
      headline3: TextStyle(fontSize: 14.0, fontFamily: "hind",)
  ),

  radioTheme: RadioThemeData (
    //mouseCursor: MouseCursor(),
    fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered)) { // завис
        return Colors.blueGrey;
        } else if (states.contains(MaterialState.selected)) {
    return Colors.green;
} if (states.contains(MaterialState.disabled)) {
return Colors.deepOrange;
} else {
        return Colors.redAccent;
}
},),
  ),
  splashColor: Colors.yellow,
);


/*buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
    shape: CircleBorder(),

  ),
  toggleButtonsTheme: ToggleButtonsThemeData (
    textStyle: TextStyle(fontSize: 24),
    color: Color(0xFF9AC100),
    selectedColor: Color(0xFFfd8505),
  ),
   ),
    textSelectionTheme: TextSelectionThemeData (
    cursorColor: Colors.green,
    selectionColor: Colors.red,
    selectionHandleColor: Colors.yellow
  ) ,
 colorScheme: const ColorScheme (
    primary: Color(0xFFfd8505),
    primaryVariant: Colors.amber,
    secondary: Color(0xFF9AC100),
    secondaryVariant: Color(0xFF9AC100),
    surface: Colors.purpleAccent,
    background: Colors.white,
    error: Colors.red,
    onPrimary: Colors.red,
    onSecondary: Colors.deepOrange,
    onSurface: Colors.yellow,
    onBackground: Colors.green,
    onError: Colors.redAccent,
    brightness: Brightness.light,
  ),

  */