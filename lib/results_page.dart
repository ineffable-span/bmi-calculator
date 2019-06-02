import 'package:flutter/material.dart';
import 'constants.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kAppBarTitle,
      ),
      body: Center(
        child: Text('Screen Two'),
      ),
    );
  }
}
