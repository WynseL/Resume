import 'package:flutter_web/material.dart';
import 'package:resume/views/contents/content_background.dart';
import 'package:resume/views/contents/content_home.dart';
import 'package:resume/views/contents/content_skills.dart';

class ContentFrame extends StatelessWidget {

  int contentId;

  ContentFrame(this.contentId);

  @override
  Widget build(BuildContext context) {
    switch(contentId) {
      case 1: return BackgroundContent();
      case 2: return SkillsContent();
      default: return HomeContent(); 
    }
  }
}