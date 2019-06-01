import 'package:flutter/material.dart';

const textStyle = TextStyle(color: Color(0xFFFDFFFF));

class IconCard extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconCard({@required this.iconData, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: textStyle,
        )
      ],
    );
  }
}
