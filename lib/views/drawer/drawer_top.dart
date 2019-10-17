

import 'package:flutter_web/material.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';

class DrawerTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.cream,
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0, 
            height: 100.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF),
              boxShadow: [
                BoxShadow(color: Color.fromRGBO(2, 4, 16, 1)),
              ],
              image: DecorationImage(
                image: NetworkImage("images/main_logo.jpg"),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.all(Radius.circular(150.0)),
              border: Border.all(
                color: Colors.red,
                width: 5.0
              )
            ),
          ),
          SizedBox(width: 0.0, height: 8.0),
          Text(Header_Title, 
            style: TextStyle(
              fontSize: 24
            ),
          ),
          Text(Header_SubTitle),
        ],
      ),
    );
  }
}