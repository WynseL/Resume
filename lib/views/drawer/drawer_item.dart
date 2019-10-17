
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';

class DrawerItem extends StatelessWidget {

  DrawerItem(this.icon, this.text, this.isSelected, {this.onPressed});

  IconData icon;
  String text;
  bool isSelected;

  Function() onPressed;

  @override
    Widget build(BuildContext context) {
      return MaterialButton(
        color: (isSelected ? WebColors.cream : null),
        onPressed: onPressed,
        padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon, color: WebColors.frenchPuse, size: 35.0,),
            SizedBox(width: 24,),
            Text(
              text,
              style: TextStyle(
                fontSize: DefaultFontSize,
                color: Colors.black
              ),
            ),
          ],
        ),
      );
    }
}