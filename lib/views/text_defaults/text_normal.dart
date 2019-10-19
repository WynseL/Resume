import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';

class NormalText extends StatelessWidget {
  
  NormalText(this.text, {this.fontStyle, this.color});

  String text;
  FontStyle fontStyle;
  Color color;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: (this.color == null ? WebColors.dark : color),
        fontSize: 16.0,
        fontStyle: fontStyle,
      ),
    );
  }
}