import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:bmi_calculator/custom_components/custom_card.dart';
import '../custom_components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String resultText;
  final String suggestionText;

  ResultsPage(
      {@required this.bmi,
      @required this.resultText,
      @required this.suggestionText});

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
                          resultText.toUpperCase(),
                          style: kResultTitleTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          bmi,
                          style: kBmiNumberTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          suggestionText,
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
