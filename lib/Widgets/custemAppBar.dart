import 'package:flutter/material.dart';
import 'package:note_app/Widgets/rectangleIconButton.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Notes',
          style: Theme.of(context,).textTheme.bodyMedium,
          ),
          RectangleIconButton(icon: Icons.search, onPress: () {}),
        ],
      ),
    );
  }
}
