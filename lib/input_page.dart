import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './icon_card.dart';
import './transparent_card.dart';

const bottomButtonHeight = 80.0;
const bottomButtonColor = Color(0xFFEA1556);
const activeCardColor = Color(0xFF1D1F33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TransparentCard(
                    color: activeCardColor,
                    child: IconCard(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: TransparentCard(
                    color: activeCardColor,
                    child: IconCard(
                        iconData: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TransparentCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TransparentCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: TransparentCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomButtonHeight,
          ),
        ],
      ),
    );
  }
}




