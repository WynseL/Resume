import 'package:flutter_web/material.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';

class MilestoneBase extends StatelessWidget {

  MilestoneBase(this.icon, this.value, {this.content});

  IconData icon;
  List value;
  Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 48),
          child: Card(
            margin: EdgeInsets.all(32),
            child: Container(
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: content
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 35.0,
          bottom: 0.0,
          child: Container(
            height: 50.0,
            width: 1.0,
            color: WebColors.darkPrimary,
          ),
        ),
        Positioned(
          top: 40.0,
          left: 10.0,
          child: Container(
            height: MilestoneFixedIconSize - 10,
            width: MilestoneFixedIconSize - 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: WebColors.light
            ),
            child: Container(
              margin: EdgeInsets.all(5.0),
              height: MilestoneFixedIconSize,
              width: MilestoneFixedIconSize,
              child: Icon(icon, color: WebColors.light,),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: WebColors.darkPrimary
              ),
            ),
          ),
        )
      ],
    );
  }
}