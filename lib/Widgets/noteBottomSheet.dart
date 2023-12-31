import 'package:flutter/material.dart';
import 'package:note_app/Widgets/addNoteForm.dart';
class NoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AddNoteForm(),
      
      ),
    );
  }
}
