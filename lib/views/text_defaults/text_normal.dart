import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/utils/dipro-font.dart';

class NormalText extends StatelessWidget {
  
  NormalText(this.text, {this.fontStyle, this.color, this.fontFamily});

  String text;
  FontStyle fontStyle;
  Color color;
  String fontFamily;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: (this.color == null ? WebColors.dark : color),
        fontSize: 16.0,
        fontStyle: fontStyle,
        fontFamily: (fontFamily == null ? DINPro.light : fontFamily),
      ),
    );
  }
}