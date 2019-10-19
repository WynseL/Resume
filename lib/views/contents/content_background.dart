import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';

class BackgroundContent extends StatefulWidget {
@override
  State<StatefulWidget> createState() => BackgroundContentState();
}

class BackgroundContentState extends State<BackgroundContent> {

  _timelineItem() {

    double cardHeight = 100.0;
    double fixedIconSize = 60.0;

    double fixedIconSizeBorder = fixedIconSize - 10;
    double fixedIconSizeCenter = (cardHeight / 2) + 10;

    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 48),
          child: Card(
            margin: EdgeInsets.all(32),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: cardHeight,
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
            color: WebColors.frenchPuse,
          ),
        ),
        Positioned(
          top: fixedIconSizeCenter,
          left: 10.0,
          child: Container(
            height: fixedIconSizeBorder,
            width: fixedIconSizeBorder,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: WebColors.darkVanilla
            ),
            child: Container(
              margin: EdgeInsets.all(5.0),
              height: fixedIconSize,
              width: fixedIconSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: WebColors.frenchPuse
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return 
    
    
    Container(
      color: WebColors.darkVanilla,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - DrawerWidth,
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   Background_Title,
          //   style: TextStyle(
          //     fontSize: 42.0 
          //   ),
          // ),
          SizedBox(height: 16,),
          Container(
            child: ListView(
              children: <Widget>[
                _timelineItem(),
                _timelineItem(),
                _timelineItem(),
                _timelineItem(),
                _timelineItem(),
                _timelineItem(),
                _timelineItem(),
              ],
            ),
          ),
        ]
      ),
    );
  }
}