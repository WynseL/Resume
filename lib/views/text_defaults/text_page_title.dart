import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';

class PageTitleText extends StatelessWidget {
  
  PageTitleText(this.text, {this.fontStyle});

  String text;
  FontStyle fontStyle;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.darkPrimary,
        fontSize: 42.0,
        fontStyle: fontStyle,
      ),
    );
  }
}