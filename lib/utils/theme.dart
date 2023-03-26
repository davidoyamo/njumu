import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

final ThemeData myTheme = ThemeData(
  //theming the appbar
  appBarTheme: AppBarTheme(
      elevation: 10,
      centerTitle: true,
      backgroundColor: Colors.amber,
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontFamily: "Lato"),
      actionsIconTheme: IconThemeData(size: 20),
      iconTheme: IconThemeData(color: Colors.black, size: 30),
      titleSpacing: 5),
);
