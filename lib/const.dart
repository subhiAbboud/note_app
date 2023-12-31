import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'Utilites/theme.dart';

const String kNotesBox = "notes_box";

class _ColorPicker {
  int index = 0;

  static const List<Color> _kColorsList = [
    Colors.tealAccent,
    Colors.lightGreenAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.red,
    Colors.pinkAccent,
    Colors.purple,
    Colors.deepPurple,
    Colors.lightBlue,
  ];

  Color giveMeColor() {
    index < 10 ? index : index = 0;
    return _kColorsList[index++];
  }
}

final _ColorPicker colorPicker = _ColorPicker();
