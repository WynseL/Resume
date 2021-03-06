import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:resume/views/mobile_page.dart';
import 'package:resume/views/responsive_layout.dart';

import 'package:resume/views/web_page.dart';

void main() => runApp(WebApp());

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHAD G.',
      theme: ThemeData(
        primaryColor: WebColors.primary,
        // primarySwatch: Colors.blue,
      ),
      // home: WebPage(),
      home: ResponsiveLayout(
        largeScreen: WebPage(),
        mediumScreen: MobilePage(),
        smallScreen: MobilePage(),
      )
    );
  }
}