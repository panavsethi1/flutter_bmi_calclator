import 'package:flutter/material.dart';

class ReusableIconButton extends StatelessWidget {
  ReusableIconButton({required this.onPressed, required this.icon});
  final void Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
