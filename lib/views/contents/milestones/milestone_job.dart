import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/views/contents/milestones/milestone_base.dart';
import 'package:resume/views/text_defaults/text_item_title.dart';
import 'package:resume/views/text_defaults/text_normal.dart';

class MilestoneJob extends StatelessWidget {

  MilestoneJob(this.value);

  List value;

  @override
  Widget build(BuildContext context) {
    return MilestoneBase(
      AppIcons.cogs, 
      value, 
      content: Column (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ItemTitleText(value[0]),
          NormalText(value[1], fontStyle: FontStyle.italic,),
          SizedBox(height: 16,),
          NormalText(value[2]),
        ],
      ),
    );
  }
}