import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaverka_app/core/navigation/app_navigation.dart';
import 'package:kaverka_app/core/theme/app_theme.dart';

void main() => runApp(KaverkaApp(
      navigate: AppNavigate(),
    ));

class KaverkaApp extends StatelessWidget {
  AppNavigate navigate;
  KaverkaApp({Key? key, required this.navigate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: navigate.generateRoute,
      title: "Kaverka",
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
    );
  }
}
