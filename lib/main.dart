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