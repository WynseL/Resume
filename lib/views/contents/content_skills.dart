import 'package:flutter_web/material.dart';
import 'package:resume/app_icons.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/utils/default-colors.dart';

class SkillsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    _cardItems(IconData icon, List value) {
      return SizedBox(
        width: 200,
        height: 100,
        child: Card(
          elevation: 3,
          child: Container(
            padding: EdgeInsets.all(16),
            child:  Column (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(icon, color: WebColors.frenchPuse, size: 48,),
                    SizedBox(width: 16,),
                    Text(value[0], style: TextStyle(fontSize: 26.0),)
                  ],
                ),
                SizedBox(height: 16,),
                Text(value[1], style: TextStyle(fontSize: DefaultFontSize),),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      color: WebColors.darkVanilla,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - DrawerWidth,
      padding: EdgeInsets.all(48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Skills_Title,
            style: TextStyle(
              fontSize: 42.0 
            ),
          ),
          SizedBox(height: 16,),
          GridView.count(
            shrinkWrap: true,    
            padding: EdgeInsets.all(4.0),          
            mainAxisSpacing: 4.0,
            childAspectRatio: 2,
            crossAxisSpacing: 32.0,
            crossAxisCount: 3,
            children: <Widget>[
              _cardItems(AppIcons.phone_android, Skills_1),
              _cardItems(AppIcons.web, Skills_2),
              _cardItems(AppIcons.cogs, Skills_3),
              _cardItems(AppIcons.devices_other, Skills_4),
            ],
          ),
        ],
      ),
      
      

      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Text(
      //       Skills_Title,
      //       style: TextStyle(
      //         fontSize: 42.0 
      //       ),
      //     ),
      //     SizedBox(height: 16,),
      //     SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,

      //       child: Row(
      //         children: <Widget>[
      //           _cardItems(AppIcons.cogs, "cowww"),
      //           SizedBox(width: 36,),
      //           _cardItems(AppIcons.cogs, "cowww"),
      //           SizedBox(width: 36,),
      //           _cardItems(AppIcons.cogs, "cowww"),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}