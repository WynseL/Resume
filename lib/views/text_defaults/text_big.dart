import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';

class BigText extends StatelessWidget {
  
  BigText(this.text);

  String text;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.dark,
        fontSize: 48.0
      ),
    );
  }
}