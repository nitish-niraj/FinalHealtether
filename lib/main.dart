import 'package:finalhealtether/screens/Records/Patient%20Record/Procedurerecords.dart';
import 'package:finalhealtether/themeUI/ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.defaultTheme,
      home: ProcedureRecords(),
    );
  }
}
