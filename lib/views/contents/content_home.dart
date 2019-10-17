
import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';

import 'dart:js' as js;


class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {

  List<bool> _iconHoverState = [false, false, false, false];

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
          color: (_iconHoverState[id] ? bgcolor : WebColors.cream),
          onPressed: () { js.context.callMethod("open", [urlToOpen]); },
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            onPressed: null,
            icon: Icon(icon, color: (_iconHoverState[id] ? iconColor : WebColors.frenchPuse)),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.darkVanilla,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - DrawerWidth,
      padding: EdgeInsets.all(48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 300.0, 
            height: 300.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF),
              image: DecorationImage(
                image: NetworkImage("images/main_logo.jpg"),
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
          Text(
            Header_Title,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.black
            ),
          ),
          Text(
            About_Me_Desc,
            style: TextStyle(
              fontSize: DefaultFontSize,
              color: Colors.black
            ),
          ),
          SizedBox(width: 0.0, height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _decoratedIcon(0, AppIcons.facebook_1, Colors.white, Colors.blue, Header_Link_0), // Facebook
              _decoratedIcon(1, AppIcons.twitter, Colors.white, Colors.lightBlue, Header_Link_0), //Twitter
              _decoratedIcon(2, AppIcons.github, Colors.white, Colors.black, Header_Link_0), // Github
              _decoratedIcon(3, AppIcons.bitbucket, Colors.white, Colors.blue, Header_Link_0), // Bitbucket
            ],
          ),
        ],
      ),
    );
  }
}