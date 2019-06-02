import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_card.dart';
import './custom_components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kAppBarTitle,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 10,
            child: CustomCard(
              color: kActiveCardColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Center(
                        child: Text(
                          'OVERWEIGHT',
                          style: kResultTitleTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          '26.7',
                          style: kBmiNumberTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'You have a higher than normal body weight.',
                          textAlign: TextAlign.center,
                          style: kResultSuggestionTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
