import 'package:flutter/material.dart';
import 'package:njumu/screens/homepage.dart';
import 'package:njumu/screens/intro.dart';
import 'package:njumu/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const intro(),
    );
  }
}
