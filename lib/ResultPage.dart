//import 'file:///C:/Users/Admin/AndroidStudioProjects/bmicalculator/lib/compenent/ReusableCard.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottomButom.dart';
import 'ReusableCard.dart';
import 'CalculatorBrain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({ this.bmi, this.result, this.interp});
  final String bmi;
  final String result;
  final String interp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                " YOUR RESULT",
                style: Titletext,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: Active_colo,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: Result,
                  ),
                  Text(
                    bmi,
                    style: BMIstyle,
                  ),
                  Text(
                    interp,
                    style: bodystyle,
                    textAlign: TextAlign.center ,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:  bottomButom(
              ontap: (){
                Navigator.pop(context);
              },
              title: "Result",
            ),
          ),
        ],
      ),
    );
  }
}
