import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
        iconTheme: IconThemeData(color: Colors.black, size: 25),
        titleSpacing: 5),
    //scaffold
    scaffoldBackgroundColor: Colors.white,
    //text theme
    textTheme: TextTheme(
      //image description
      labelLarge: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 18,
          color: Colors.black,
          fontFamily: "Lato"),
      labelMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(255, 0, 0, 0),
          fontFamily: "Lato"),
      labelSmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Color.fromARGB(255, 0, 0, 0),
          fontFamily: "Lato"),
    ),
    iconTheme: IconThemeData(color: Colors.black, size: 30, weight: 100));
