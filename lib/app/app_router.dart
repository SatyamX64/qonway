import 'package:flutter/material.dart';
import 'package:qonway/ui/home/sc_home.dart';

class AppRouter {
  static const HOME = '/home';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
