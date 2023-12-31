import 'package:flutter/material.dart';
import 'package:note_app/Widgets/rectangleIconButton.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({required this.label, super.key, required this.icon});

  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
         Text(
          label,
          style:  TextStyle(
            fontSize: 30,
          ),
        ),
        RectangleIconButton(icon: icon, onPress: () {}),
      ],
    );
  }
}
