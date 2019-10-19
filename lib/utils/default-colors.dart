import 'package:flutter_web/material.dart';

class WebColors {
  WebColors._privateConstructor();
  static final WebColors _instance = WebColors._privateConstructor();
  static WebColors get instance { return _instance; }

  static final primary = const Color(0xFF1B263B);
  static final darkPrimary = const Color(0xFF0D1B2A);
  static final lightPrimary = const Color(0xFF415A77);
  static final light = const Color(0xFFF1F2F3);
  static final dark = const Color(0xFF222222);
}