import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/views/buttons/button_list.dart';
import 'package:resume/views/text_defaults/text_item_title.dart';
import 'package:resume/views/text_defaults/text_normal.dart';
import 'package:resume/views/text_defaults/text_page_title.dart';
import 'package:tuple/tuple.dart';

class AwardsContent extends StatelessWidget {

  _awardItem(List value, List buttons) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column (
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.light,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - DrawerWidth,
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageTitleText(Awards_Title),
          SizedBox(height: 16,),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                _awardItem(angelhackJuicebox, [ Tuple2(AppIcons.person, "https://e27.co/angelhack-manila-winner-has-a-futuristic-iot-juicebox-for-a-healthy-you-20150813/") ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}