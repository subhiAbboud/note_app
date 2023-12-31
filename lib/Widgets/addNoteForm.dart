import 'package:flutter/material.dart';
import 'package:note_app/Widgets/customBottomButton.dart';
import 'package:note_app/Widgets/customTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: title ?? 'Title',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hintText: subTitle ?? 'Content',
              maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
