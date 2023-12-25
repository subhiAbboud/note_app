import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custemAppBar.dart';
import 'package:note_app/Models/dataLayer.dart';
import 'package:note_app/Widgets/noteItem.dart';


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Note> notes= [];
  List<Widget> notesWidgets=[];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SafeArea(
      child: Column(
        children:<Widget> [
          const CustemAppBar(),
          Expanded(
            child: notes.length>0 ?
                  Column(children: notesWidgets,):
                  Icon(Icons.add,size: 20.0, color: Colors.grey,),
          ),
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          notesWidgets.add(NoteItem(note: Note(title: 'Note Title',subTitle: 'lorem ipsum jokos ')));
      },),
    );
  }
}
