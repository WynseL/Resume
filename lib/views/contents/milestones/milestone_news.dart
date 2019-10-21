import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/views/buttons/button_list.dart';
import 'package:resume/views/contents/milestones/milestone_base.dart';
import 'package:resume/views/text_defaults/text_item_title.dart';
import 'package:resume/views/text_defaults/text_normal.dart';

class MilestoneNews extends StatelessWidget {

  MilestoneNews(this.value, {this.buttons});

  List value;
  List buttons;

  @override
  Widget build(BuildContext context) {
    return MilestoneBase(
      AppIcons.article_alt, 
      value, 
      content: Column (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ItemTitleText(value[0]),
          NormalText(value[1], fontStyle: FontStyle.italic,),
          SizedBox(height: 16,),
          NormalText(value[2]),
          SizedBox(height: 8,),
          ButtonList(buttons),
        ],
      ),
    );
  }
}