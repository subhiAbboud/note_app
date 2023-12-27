import 'dart:math';
import 'package:note_app/const.dart';
import 'package:flutter/material.dart';
import 'package:note_app/Widgets/noteItem.dart';
import 'package:note_app/Models/dataLayer.dart';
import 'noteItem.dart';



class NotesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context,index){
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(note:Note(
              title: 'Flutter Tips',
              subTitle: 'create a Notes app with flutter framework,easy to use , simple , smart ',
              color: colorPicker.giveMeColor(),
              date: '10/12/2023',
           ),
            ),
        );
      },),
    );
  }
}