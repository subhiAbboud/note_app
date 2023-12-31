
import 'package:note_app/const.dart';
import 'package:flutter/material.dart';
import 'package:note_app/Widgets/noteItem.dart';
import 'package:note_app/Models/dataLayer.dart';




class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:18.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(top:8.0),
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