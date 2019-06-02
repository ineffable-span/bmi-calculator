import 'package:flutter/material.dart';

class TransparentCard extends StatelessWidget {
  final Color color;
  final Widget child;

  TransparentCard({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: this.child,
    );
  }
}