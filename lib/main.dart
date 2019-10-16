import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart'; 
import 'package:resume/constants.dart';

import 'dart:js' as js;

void main() => runApp(WebApp());

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHAD G.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Main Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  List<bool> _iconHoverState = [false, false, false];

  _defaultText(String text, double textSize) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        color: Colors.black
      ),
    );
  }

  static const _defaultBgButtonState = Color.fromARGB(100, 20, 20, 20);
  static const _defaultIconButtonState = Color.fromARGB(100, 50, 50, 50);

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
          color: (_iconHoverState[id] ? bgcolor : _defaultBgButtonState),
          onPressed: () { js.context.callMethod("open", [urlToOpen]); },
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            onPressed: null,
            icon: Icon(icon, color: (_iconHoverState[id] ? iconColor : _defaultIconButtonState)),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }

  _labelAndValue(String label, String value) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.body2,
        children: [
          TextSpan(
            text: "$label: ", 
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.normal    
            )
          ),
          TextSpan(
            text: value
          )
        ]
      ),  
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _defaultText("HEY HEY", 50.0),
            _defaultText("kek keme", 30.0),
            SizedBox(width: 0.0, height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _decoratedIcon(0, MyFlutterApp.facebook, Colors.white, Colors.blue, "google.com"), // Facebook
                _decoratedIcon(1, MyFlutterApp.twitter, Colors.white, Colors.lightBlue, "google.com"), //Twitter
                _decoratedIcon(2, MyFlutterApp.twitter, Colors.red, Colors.white, "google.com"),
              ],
            ),
            SizedBox(width: 0.0, height: 24.0),
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
            Container(
              margin: EdgeInsets.all(48),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      color: Colors.lime,
                      padding: EdgeInsets.all(32),
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          Text(
                            "titleee!", 
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                          _labelAndValue("wowasdsadasd", "wowasdasddadaas"),
                          _labelAndValue("heyasddsada", "heyasddadss"),
                          _labelAndValue("mmmadadasdas", "mmmasdadadasdsadasd"),
                          _labelAndValue("xDasddadada", "Dxaddadasdasdadasdasd"),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.teal,
                      padding: EdgeInsets.all(32),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          Text(
                            AboutMeTitle, 
                            style: TextStyle(
                              fontSize: 30.0
                            ),
                          ),
                          Text(AboutMeDesc, textAlign: TextAlign.left,)
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
            _defaultText("kek keme", 30.0),
            // Add gridview here pls :D
          ],
        ),
      ) 
    );
  }
}
