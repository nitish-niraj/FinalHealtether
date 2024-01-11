import 'package:finalhealtether/screens/Home/Screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';

import 'ThemeUi/uitheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.defaultTheme,
      home: HomeScreen(),
    );
  }
}
