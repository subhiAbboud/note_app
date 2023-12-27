import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


part 'note.g.dart';

@HiveType(typeId:0)
class Note extends HiveObject{
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  String date;
  @HiveField(3)
  Color color;
  Note(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
