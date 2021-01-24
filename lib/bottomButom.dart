import 'package:flutter/material.dart';
import 'constants.dart';

class bottomButom extends StatelessWidget {
  bottomButom({@required this.ontap,@required this.title});
  final Function ontap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Text(title,
          textAlign: TextAlign.center,
          style:largebuttom,
        ),
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.only(top: 10),
        color: Color(0xFFEB1555),
        width: double.infinity,
        height: 60,
      ),
    );
  }
}