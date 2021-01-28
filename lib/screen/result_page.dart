import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../component/reuseable_card.dart';
import '../component/bottom_container.dart';

//ResultPage collect the Calculations done by CalculatorBrain.dart
class ResultPage extends StatelessWidget {
  //properties
  final String resultText;
  final String bmiResult;
  final String feedback;

  ResultPage({this.resultText, this.bmiResult, this.feedback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kWeightIndicationTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    feedback,
                    style: kBaseTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomContainer(
              title: 'RE-CALCULATE',
              onpress: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
