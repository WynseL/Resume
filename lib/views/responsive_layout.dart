import 'package:flutter_web/material.dart';

class ResponsiveLayout extends StatelessWidget {
  
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  ResponsiveLayout({
    Key key,
    @required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  });
  
  static isLargeScreen(BuildContext context) { return MediaQuery.of(context).size.width > 800; }
  static isMediumScreen(BuildContext context) { return MediaQuery.of(context).size.width > 800 && MediaQuery.of(context).size.width < 1200; }
  static isSmallScreen(BuildContext context) { return MediaQuery.of(context).size.width < 800; }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) { return largeScreen; }
        else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) { return mediumScreen ?? largeScreen; }
        else { return smallScreen ?? largeScreen; }
      },
    );
  }
}