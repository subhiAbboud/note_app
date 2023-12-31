import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Models/dataLayer.dart';
import 'package:note_app/Views/editNote.dart';

class NoteItem extends StatelessWidget {
  final Note note;

  NoteItem({required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        },),);
      },
      child: Container(
        decoration: BoxDecoration(
          color: note.color,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    note.title,
                    style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                subtitle: Text(
                  note.subTitle,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.6)),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 35, 20),
              child: Text(
                '${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
