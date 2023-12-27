import 'package:flutter/material.dart';
import 'package:note_app/Models/dataLayer.dart';



class NoteItem extends StatelessWidget {
  Note note;

  NoteItem({required this.note});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: note.color,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        //Todo : add random color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: <Widget>[
          ListTile(
            title: Text(note.title,style: const TextStyle(color: Colors.black),),
            subtitle: Text(note.subTitle,style: TextStyle(color: Colors.black.withOpacity(0.05)),),

            trailing: IconButton(icon: const Icon(Icons.delete,
            color: Colors.black,),onPressed: (){},),
          ),
          
          SizedBox(height: 20.0,),

          Text('${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}',style: TextStyle(color: Colors.black.withOpacity(0.05)),),
        ],
      ),
    );
  }
}
