import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:resume/utils/default-colors.dart';

class BackgroundContent extends StatefulWidget {
@override
  State<StatefulWidget> createState() => BackgroundContentState();
}

class BackgroundContentState extends State<BackgroundContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (content, index) {
        Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32),
              child: Card(
                child: Container(
                  width: 300.0,
                  height: 100.0,

                ),
              ),
            ),
            Positioned(
              top: 0.0,
              left: 35.0,
              bottom: 0.0,
              child: Container(
                height: 40.0,
                width: 1.0,
                color: WebColors.frenchPuse,
              ),
            ),
            Positioned(
              top: 100.0,
              left: 15.0,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: WebColors.cream
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: WebColors.frenchPuse
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}