import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPressed;

  CustomCard({@required this.color, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: this.child,
      ),
    );
  }
}