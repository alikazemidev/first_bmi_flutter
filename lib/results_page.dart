import 'package:bmi_cal/bottom_button.dart';
import 'package:bmi_cal/constans.dart';
import 'package:bmi_cal/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  String? clacBMI;
  String? resbmi;
  String? bodybmi;
  ResultsPage(
      {required this.clacBMI, required this.resbmi, required this.bodybmi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'your result',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resbmi!.toUpperCase(),
                        style: kResultText,
                      ),
                      Text(
                        clacBMI!,
                        style: kBMIText,
                      ),
                      Text(
                        bodybmi!,
                        style: kResultBody,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: BottomButton(
                  message: 'Re Calculat',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
