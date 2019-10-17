import 'package:flutter_web/material.dart';

import 'package:resume/views/web_page.dart';

void main() => runApp(WebApp());

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHAD G.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebPage(),
    );
  }
}

/*
class HomePageState extends State<HomePage> {

  List<bool> _iconHoverState = [false, false, false, false];


  Size screenSize;

  _defaultText(String text, double textSize) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: textSize,
        color: Colors.black
      ),
    );
  }

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

  _labelAndValue(List value) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.body1,
        children: [
          TextSpan(
            text: "${value[0]}: ", 
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.normal    
            )
          ),
          TextSpan(text: value[1])
        ]
      ),  
    );
  }

  _gridItems(IconData icon, List value) {
    return GridTile(
      child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Icon(icon, size: 50,),
              SizedBox(height: 5,),
              Text(
                value[0], 
                textAlign: TextAlign.center, 
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 10,),
              Text(
                value[1], 
                textAlign: TextAlign.center,
              )
          ],
        ),
      ),
    );
  }

  _dynamicResizeToMobile(double defaultSize, double mobile) {
    return EdgeInsets.all(defaultSize);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      screenSize = MediaQuery.of(context).size;
    });
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: WebColors.darkVanilla,
              height: screenSize.height,
              width: screenSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(width: 0.0, height: 24.0),
                  _defaultText(Header_Title, 50.0),
                  _defaultText(Header_SubTitle, 30.0),
                  SizedBox(width: 0.0, height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _decoratedIcon(0, AppIcons.facebook_1, Colors.white, Colors.blue, Header_Link_0), // Facebook
                      _decoratedIcon(1, AppIcons.twitter, Colors.white, Colors.lightBlue, Header_Link_0), //Twitter
                      _decoratedIcon(2, AppIcons.github, Colors.white, Colors.black, Header_Link_0), // Github
                      _decoratedIcon(3, AppIcons.bitbucket, Colors.white, Colors.blue, Header_Link_0), // Bitbucket
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 0.0, height: 24.0),
            Container(
              margin: EdgeInsets.all(48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      color: Colors.lime,
                      padding: EdgeInsets.all(32),
                      // width: screenSize.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          Text(Contact_Info_Title, style: TextStyle(fontSize: 30.0,),),
                          _labelAndValue(Contact_Info_Location),
                          _labelAndValue(Contact_Info_Email),
                          _labelAndValue(Contact_Info_Mobile),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.teal,
                      padding: EdgeInsets.all(32),
                      width: screenSize.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          Text(About_Me_Title, style: TextStyle(fontSize: 30.0),),
                          Text(About_Me_Desc, textAlign: TextAlign.left,),
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
            _defaultText(Skills_Title, 30.0),
            Container(
              margin: EdgeInsets.fromLTRB(48, 32, 48, 32),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: screenSize.width / screenSize.height,
                padding: EdgeInsets.all(4.0),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: <Widget>[
                  _gridItems(AppIcons.phone_android, Skills_1),
                  _gridItems(AppIcons.web, Skills_2),
                  _gridItems(AppIcons.cogs, Skills_3),
                  _gridItems(AppIcons.devices_other, Skills_4),
                ],
              ),
            ),
          ],
        ),
      ) 
    );
  }
}
*/
