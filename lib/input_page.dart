import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'Icon_content.dart';
import 'constants.dart';
import 'CalculatorBrain.dart';
import 'ResultPage.dart';
import 'bottomButom.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectefgender;
  int height=180;
  int weight=60;
  int age =19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
               Expanded(
                  child:ReusableCard(
                    press: (){
                      setState(() {
                        selectefgender=Gender.male;
                      });
                    },
                    colour: selectefgender==Gender.male? Active_colo : Des_colo ,
                    CardChild: IconContent(sex: 'MALE', font: FontAwesomeIcons.mars,),
                    //CardChild: Card(sex: "MALE",font: FontAwesomeIcons.mars,),
                  ),
            ),
                Expanded(
                  child: ReusableCard(
                    press: (){
                      setState(() {
                        selectefgender=Gender.female;
                      });
                    },
                    colour: selectefgender==Gender.female? Active_colo : Des_colo ,
                    CardChild: IconContent(sex: "FEMALE",font: FontAwesomeIcons.venus,),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Active_colo,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',
                  style: labelstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: nmbrstyle,
                      ),
                      Text(
                        "cm",
                        style: labelstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15,),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                    ),
                     child: Slider(
                      value: height.toDouble(),
                      min: 122.0,
                      max: 220.0,
                      onChanged: (double newvalue){
                        setState(() {
                          height=newvalue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Active_colo,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style:labelstyle,),
                        Text(
                          weight.toString(),
                          style:nmbrstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                               onpress: (){
                                 setState(() {
                                   weight += 1;
                                 });
                               },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour:Active_colo,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                           style: labelstyle,
                        ),
                        Text(
                          age.toString(),
                          style: nmbrstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  age--;
                                });
                              }
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  age++;
                                });
                              }
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomButom(
            ontap: (){
              CalculatorrBrain calc=CalculatorrBrain(height: height,weight: weight);
              Navigator.push(context,MaterialPageRoute(builder: (context){return
                ResultPage(
                bmi: calc.CalcultBMI(),
                result: calc.getResult(),
                interp: calc.getInerpration(),
              );}),
              );
            },
            title: " CLICK ME",
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      onPressed: onpress,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}

/*bmi: calc.getResult(),
                  result: calc.getResult(),
                  interp: calc.getInerpration(),*/