
import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/views/responsive_layout.dart';
import 'package:resume/views/text_defaults/text_big.dart';
import 'package:resume/views/text_defaults/text_normal.dart';

import 'dart:js' as js;


class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {

  List<bool> _iconHoverState = [false, false, false, false, false];

  _decoratedIcon(int id, IconData icon, Color bgcolor, Color iconColor, String urlToOpen) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
      width: 40.0, 
      height: 40.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onHover: (hover) {  setState(() { _iconHoverState[id] = hover; }); },
        onTap: () {},
        child: RaisedButton(
          elevation: 0,
          color: (_iconHoverState[id] ? bgcolor : WebColors.lightPrimary),
          onPressed: () { js.context.callMethod("open", [urlToOpen]); },
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            onPressed: null,
            icon: Icon(icon, color: (_iconHoverState[id] ? iconColor : WebColors.light)),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.light,
      height: MediaQuery.of(context).size.height,
      // padding: EdgeInsets.all(48),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: (ResponsiveLayout.isLargeScreen(context) ? CrossAxisAlignment.start : CrossAxisAlignment.center),
            children: <Widget>[
              Container(
                width: 240.0, 
                height: 240.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFF),
                  image: DecorationImage(
                    image: NetworkImage("images/itsamechad.jpg"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(150.0)),
                  border: Border.all(
                    color: Colors.red,
                    width: 20.0
                  )
                ),
              ),
              SizedBox(width: 0.0, height: 32.0),
              BigText(Header_Title),
              NormalText(About_Me_Desc),
              SizedBox(width: 0.0, height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _decoratedIcon(0, AppIcons.facebook_1, Colors.white, Colors.blue, Header_Link_1), // Facebook
                  _decoratedIcon(1, AppIcons.twitter, Colors.white, Colors.lightBlue, Header_Link_2), //Twitter
                  _decoratedIcon(2, AppIcons.github, Colors.white, Colors.black, Header_Link_3), // Github
                  _decoratedIcon(3, AppIcons.bitbucket, Colors.white, Colors.blue, Header_Link_4), // Bitbucket
                  _decoratedIcon(4, AppIcons.linkedin, Colors.blue, Colors.white, Header_Link_5), // LinkedIn
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}