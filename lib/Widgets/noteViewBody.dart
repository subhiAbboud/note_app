import 'package:flutter/material.dart';
import 'custemAppBar.dart';
import 'package:note_app/Models/dataLayer.dart';
import 'noteListView.dart';
class NotesViewBody extends StatelessWidget {
  final List<Note> notes = [];
  final List<Widget> notesWidgets = [];

  NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const CustemAppBar(),
          Expanded(child: NotesListView()),

          
          ],
      ),
    );
  }
}
