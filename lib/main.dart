import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_controller/core/constants/common.dart';
import 'package:shop_controller/core/constants/palette.dart';
import 'package:shop_controller/feature/main/screens/main_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
          PointerDeviceKind.trackpad,
        },
      ),
      theme: ThemeData(
        fontFamily: Constants.appFontName,
        scaffoldBackgroundColor: Palette.background,
        appBarTheme: const AppBarTheme(foregroundColor: Palette.black),
        colorScheme: ThemeData().colorScheme.copyWith(primary: Palette.primary),
      ),
      home: const MainScreen(),
    );
  }
}
