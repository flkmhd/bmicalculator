import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour,this.CardChild, this.press});
  final Color colour;
  final  CardChild;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press ,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
      ),
    );
  }
}
