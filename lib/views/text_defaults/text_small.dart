import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';

class SmallText extends StatelessWidget {
  
  SmallText(this.text, {this.fontStyle});

  String text;
  FontStyle fontStyle;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.dark,
        fontStyle: fontStyle,
      ),
    );
  }
}