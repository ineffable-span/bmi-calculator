import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  BottomButton({@required this.buttonText, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kBottomButtonTextStyle,
          ),
        ),
        color: kBottomButtonColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomButtonHeight,
      ),
    );
  }
}