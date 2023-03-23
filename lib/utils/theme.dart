import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  //theming the appbar
  appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontFamily: "Lato"),
      actionsIconTheme: IconThemeData(size: 20),
      iconTheme: IconThemeData(color: Colors.black, size: 35),
      titleSpacing: 5),
);
