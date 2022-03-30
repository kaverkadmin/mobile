import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xffffffff);
  static Color lightPrimaryColor = const Color(0xff2A5BE1);
  static Color lightParticlesColor = const Color(0xff000000);
  static Color darkBackgroundColor = const Color(0xff242a30);
  static Color darkPrimaryColor = const Color(0xff2A5BE1);
  static Color darkParticlesColor = const Color(0xff000000);

  static const TextTheme _lightTextTheme = TextTheme(
    bodyText1: TextStyle(color: Colors.black, fontSize: 18),
  );

  static const TextTheme _darkTextTheme = TextTheme(
    bodyText1: TextStyle(color: Colors.black, fontSize: 18),
  );

  const AppTheme._();

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: lightPrimaryColor,
      backgroundColor: lightBackgroundColor,
      textTheme: _lightTextTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity);

  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: darkPrimaryColor,
      textTheme: _darkTextTheme,
      backgroundColor: darkBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity);

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance!.window.platformBrightness;

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? lightBackgroundColor
          : darkBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}

extension ThemeExtras on ThemeData {
  Color get particlesColor => brightness == Brightness.light
      ? AppTheme.lightParticlesColor
      : AppTheme.darkParticlesColor;
}
