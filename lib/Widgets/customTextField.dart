import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.hintText,
    this.maxLines=1,
    Key? key,
  }) : super(key: key);

  final String ? hintText;
  final int ? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines ,
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
