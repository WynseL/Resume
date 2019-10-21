import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/views/content_frame.dart';
import 'package:resume/views/drawer/drawer_item.dart';
import 'package:resume/views/drawer/drawer_top.dart';
import 'package:resume/views/text_defaults/text_normal.dart';

class MobilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MobilePageState();
}

class MobilePageState extends State<MobilePage> {

  int selectedItem = 0;
  
  _setStateItemId(int id) {
    Navigator.pop(context);
    setState(() {
      selectedItem = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NormalText(""),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Container(
          color: WebColors.primary,
          child: ListView(
            children: <Widget>[
                // Top Bar
                DrawerTop(),
                DrawerItem(AppIcons.person, "About", selectedItem == 0, onPressed: () { _setStateItemId(0); },),
                DrawerItem(AppIcons.lightbulb_outline, "Skills", selectedItem == 1, onPressed: () { _setStateItemId(1); },),
                DrawerItem(AppIcons.star, "Awards", selectedItem == 2, onPressed: () { _setStateItemId(2); },),
                DrawerItem(AppIcons.star, "News & Articles", selectedItem == 3, onPressed: () { _setStateItemId(3); },),
            ],
          ),
        ),
      ),
      body: ContentFrame(selectedItem),
    );
  }
}