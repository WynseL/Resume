import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/views/responsive_layout.dart';
import 'package:resume/views/text_defaults/text_item_title.dart';
import 'package:resume/views/text_defaults/text_normal.dart';
import 'package:resume/views/text_defaults/text_page_title.dart';

class SkillsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    _cardItems(IconData icon, List value) {
      return SizedBox(
        width: 200,
        height: 100,
        child: Card(
          elevation: 3,
          child: Container(
            padding: EdgeInsets.all(16),
            child:  Column (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: WebColors.light,
                        shape: BoxShape.circle
                      ),
                      child: Icon(icon, color: WebColors.primary, size: 32,),
                    ),
                    SizedBox(width: 16,),
                    ItemTitleText(value[0]),
                  ],
                ),
                SizedBox(height: 16,),
                NormalText(value[1]),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      color: WebColors.light,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageTitleText(Skills_Title),
          SizedBox(height: 16,),
          Expanded(
            flex: 1,
            child: GridView.count(
              shrinkWrap: false,    
              padding: EdgeInsets.all(4.0),          
              mainAxisSpacing: 4.0,
              childAspectRatio: 2,
              crossAxisSpacing: 32.0,
              crossAxisCount: (ResponsiveLayout.isLargeScreen(context) ? 3 : 1),
              children: <Widget>[
                _cardItems(AppIcons.phone_android, Skills_1),
                _cardItems(AppIcons.web, Skills_2),
                _cardItems(AppIcons.cogs, Skills_3),
                _cardItems(AppIcons.devices_other, Skills_4),
              ],
            ),
          )
        ],
      ),
    );
  }
}