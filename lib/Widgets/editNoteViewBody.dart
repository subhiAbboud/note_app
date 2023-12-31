import 'package:flutter/material.dart';
import 'package:note_app/Widgets/customTextField.dart';
import 'custemAppBar.dart';


class EditNoteViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              CustemAppBar(label: 'Edit Note', icon: Icons.check),
              SizedBox(height: 20,),
              CustomTextField(hintText: 'Title',),
              SizedBox(height: 20,),
              CustomTextField(hintText: 'Content',maxLines: 5,),
              
          
            ],
          ),
        ),
      );
  }
}



