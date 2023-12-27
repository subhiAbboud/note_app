import 'package:flutter/material.dart';
import 'package:note_app/Widgets/noteViewBody.dart';
import 'package:note_app/Widgets/noteBottomSheet.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight:Radius.circular(40),)
              ),
              context: context,
              builder: (BuildContext builder) {
                return NoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
