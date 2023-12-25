

import 'package:flutter/material.dart';
import 'package:note_app/Models/dataLayer.dart';
class NoteItem extends StatelessWidget {
  Note note;

  NoteItem({required this.note});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        //Todo : add random color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: <Widget>[
          ListTile(
            title: Text(note.title),
            subtitle: Text(note.subTitle),
          ),
          
          Text('${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}',),
        ],
      ),
    );
  }
}
