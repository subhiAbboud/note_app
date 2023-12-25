import 'package:flutter/material.dart';
import 'package:note_app/Screens/home.dart';
import 'Utilites/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme:  currTheme == theme.dark ? ThemeData.dark() : ThemeData.light(), 
      );
  }
}

