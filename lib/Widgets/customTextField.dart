import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.hintText,
    this.maxLines = 1,
    Key? key,
    this.onSaved,
  }) : super(key: key);

  final String? hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
          floatingLabelAlignment: FloatingLabelAlignment.center,
          hintStyle: const TextStyle(color: Colors.blueGrey),
          hintText: hintText ?? '',
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(Colors.blueGrey)),
      autofocus: true,
      style: const TextStyle(
        color: Colors.blueGrey,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color, width, borderRadius]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 20),
      borderSide: BorderSide(
        color: color ?? Colors.white,
        width: width ?? 10,
      ),
    );
  }
}
