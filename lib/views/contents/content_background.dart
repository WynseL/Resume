import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/views/contents/milestones/milestone_article.dart';
import 'package:resume/views/contents/milestones/milestone_news.dart';
import 'package:resume/views/text_defaults/text_page_title.dart';

class BackgroundContent extends StatefulWidget {
@override
  State<StatefulWidget> createState() => BackgroundContentState();
}

class BackgroundContentState extends State<BackgroundContent> {

  _timelineStart() {
    double cardHeight = 50.0;
    double fixedIconSize = 40.0;

    double fixedIconSizeBorder = fixedIconSize - 10;
    double fixedIconSizeTop = (cardHeight / 2) + 10;

    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 48),
          child: Container(
            margin: EdgeInsets.all(32),
            child: SizedBox(width: MediaQuery.of(context).size.width, height: cardHeight,),
          ),
        ),
        Positioned(
          top: fixedIconSizeTop,
          left: 35.0,
          bottom: 0.0,
          child: Container(height: 50.0, width: 1.0, color: WebColors.darkPrimary,),
        ),
        Positioned(
          top: fixedIconSizeTop,
          left: 20.0,
          child: Container(
            height: fixedIconSizeBorder,
            width: fixedIconSizeBorder,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: WebColors.light
            ),
            child: Container(
              margin: EdgeInsets.all(5.0),
              height: fixedIconSize,
              width: fixedIconSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: WebColors.darkPrimary
              ),
            ),
          ),
        )
      ],
    );
  }

  _timelineEnd() {
    double cardHeight = 50.0;
    double fixedIconSize = 40.0;

    double fixedIconSizeBorder = fixedIconSize - 10;
    double fixedIconSizeTop = (cardHeight / 2) + 10;

    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 48),
          child: Container(
            margin: EdgeInsets.all(32),
            child: SizedBox(width: MediaQuery.of(context).size.width, height: cardHeight,),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 35.0,
          bottom: fixedIconSizeTop,
          child: Container(height: 50.0, width: 1.0, color: WebColors.darkPrimary,),
        ),
        Positioned(
          bottom: fixedIconSizeTop,
          left: 20.0,
          child: Container(
            height: fixedIconSizeBorder,
            width: fixedIconSizeBorder,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: WebColors.light
            ),
            child: Container(
              margin: EdgeInsets.all(5.0),
              height: fixedIconSize,
              width: fixedIconSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: WebColors.darkPrimary
              ),
            ),
          ),
        )
      ],
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
          PageTitleText(Milestone_Title),
          SizedBox(height: 16,),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                _timelineStart(),
                MilestoneArticle(mClinicaGoes1stFlutterPHEvent),
                MilestoneNews(fdaToUseEDSS),
                MilestoneNews(digitalLogbookEDSS),
                _timelineEnd(),
              ],
            ),
          ),
        ]
      ),
    );
  }
}