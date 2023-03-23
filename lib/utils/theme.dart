import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  //theming the appbar
  appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 211, 174, 63),
      titleTextStyle: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
      actionsIconTheme: IconThemeData(size: 20),
      iconTheme: IconThemeData(color: Colors.black, size: 35),
      titleSpacing: 5),
);
