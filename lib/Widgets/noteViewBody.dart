import 'package:flutter/material.dart';
import 'custemAppBar.dart';
import 'package:note_app/Models/dataLayer.dart';

class NotesViewBody extends StatelessWidget {
  List<Note> notes = [];
  List<Widget> notesWidgets = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const CustemAppBar(),
          ],
      ),
    );
  }
}
