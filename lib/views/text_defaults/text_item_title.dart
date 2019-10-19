import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';

class ItemTitleText extends StatelessWidget {
  
  ItemTitleText(this.text);

  String text;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.dark,
        fontSize: 26.0
      ),
    );
  }
}