

import 'package:flutter_web/material.dart';
import 'package:resume/views/contents/content_home.dart';

class ContentFrame extends StatelessWidget {

  int contentId;

  ContentFrame(this.contentId);

  @override
  Widget build(BuildContext context) {
    switch(contentId) {
      case 1: return null;
      case 2: return null;
      default: return HomeContent(); 
    }
  }
}