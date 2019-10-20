import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/utils/dipro-font.dart';

class BigText extends StatelessWidget {
  
  BigText(this.text, {this.fontStyle, this.color, this.fontFamily});

  String text;
  FontStyle fontStyle;
  Color color;
  String fontFamily;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.dark,
        fontSize: 48.0,
        fontStyle: fontStyle,
        fontFamily: (fontFamily == null ? DINPro.bold : fontFamily),
      ),
    );
  }
}