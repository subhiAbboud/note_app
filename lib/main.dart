import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Views/home.dart';
import 'const.dart';
import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

// currTheme == theme.dark
// ?
// ThemeData(brightness: Brightness.dark,
//   fontFamily: 'assets\fonts\Poppins-Regular.ttf')
// :
// ThemeData(brightness: Brightness.light,
//   fontFamily: 'assets\fonts\Poppins-Regular.ttf')
