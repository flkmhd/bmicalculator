import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.sex,@required this.font});
  final String sex;
  final IconData font;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          font,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$sex",
          style:labelstyle,
        ),
      ],
    );
  }
}


