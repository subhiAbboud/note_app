import 'package:flutter/material.dart';
import 'customTextField.dart';
class NoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children:  <Widget>[
          const Expanded(
            child: CustomTextField(hintText: 'Title',),
          ),
          const SizedBox(height: 20,),
          const Expanded(
            child: CustomTextField(hintText: 'Content',maxLines: 10,),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Add',
                style: TextStyle(color: Colors.black26),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
