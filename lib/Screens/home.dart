import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custemAppBar.dart';
import 'package:note_app/Models/dataLayer.dart';
import 'package:note_app/Widgets/noteItem.dart';
import 'package:note_app/Widgets/noteViewBody.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: NotesViewBody(),
   );
  }
}
