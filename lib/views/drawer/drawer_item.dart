
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/utils/dipro-font.dart';
import 'package:resume/views/text_defaults/text_normal.dart';

class DrawerItem extends StatelessWidget {

  DrawerItem(this.icon, this.text, this.isSelected, {this.onPressed});

  IconData icon;
  String text;
  bool isSelected;

  Function() onPressed;

  @override
    Widget build(BuildContext context) {
      return MaterialButton(
        color: (isSelected ? WebColors.light : null),
        onPressed: onPressed,
        padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon, 
              color: (isSelected ? WebColors.dark : WebColors.light), 
              size: 24.0,
            ),
            SizedBox(width: 16,),
            NormalText(
              text,
              color: (isSelected ? WebColors.dark : WebColors.light), 
              // fontFamily: DINPro.medium,),
              fontFamily: (isSelected ? DINPro.medium : DINPro.light),),
          ],
        ),
      );
    }
}