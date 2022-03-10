import 'package:flutter/material.dart';

class DiskoThemes {
  static ThemeData get lightThemeData => ThemeData(
    fontFamily: 'Montserrat',
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
      )
    )
  );

  static ThemeData get darkThemeData => ThemeData();
}
