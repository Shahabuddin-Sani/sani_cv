import 'package:flutter/material.dart';
import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    shadowSub: const Color(0xfff85606).withAlpha(100),
    primary: Color(0xFF872341),
    primaryLight: Color.fromARGB(255, 248, 131, 72).withAlpha(100),
    textSub: const Color(0xff141414),
    textSub2: const Color(0xff776B5D),
    gradient1: const Color(0xFFF3EEEA),
    gradient2: const Color(0xFFEBE3D5),
  );

  static AppCoreTheme light = _core.copyWith(
    primary: Color(0xFF872341),
    background: const Color(0xfff5f5f5),
    backgroundSub: const Color(0xff776B5D),
    scaffold: const Color(0xfffefefe),
    scaffoldDark: const Color(0xfffcfcfc),
    text: const Color(0xff484848),
    textSub2: const Color(0xff776B5D),
  );

  static AppCoreTheme dark = _core.copyWith(
    primary: Color.fromARGB(255, 81, 79, 90),
    background: Colors.grey[900],
    backgroundSub: Color.fromARGB(255, 63, 63, 63),
    scaffold: const Color(0xff0e0e0e),
    text: Colors.white,
    textSub2: Colors.black,
    gradient2: Color.fromARGB(255, 99, 94, 90),
    gradient1: Color.fromARGB(255, 168, 165, 160),
  );

  static AppCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
