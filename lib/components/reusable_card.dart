import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.child, this.onPress});
  final Color? color;
  final Widget? child;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
