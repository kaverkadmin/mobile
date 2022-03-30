import 'package:flutter/material.dart';
import 'package:kaverka_app/core/navigation/route_constants.dart';
import 'package:kaverka_app/feature/home/view/home_screen.dart';

class AppNavigate {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
