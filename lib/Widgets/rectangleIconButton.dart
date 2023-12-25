import 'package:flutter/material.dart';



class RectangleIconButton extends StatelessWidget {
  const RectangleIconButton({super.key, required this.icon, required this.onPress});

  final IconData icon;
  final Function onPress ;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        shape: const RoundedRectangleBorder() ,
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        fillColor: const Color.fromARGB(30, 250, 248, 248),

        elevation: 5.0,
        child: Icon(icon),
        onPressed: onPress());
  }
}