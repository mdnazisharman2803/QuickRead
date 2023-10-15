import 'package:flutter/material.dart';
import 'package:flutter_dartified/config/routes.dart';
import 'package:flutter_dartified/screens/export_screens.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.registrationScreen:
        return MaterialPageRoute(
          builder: (_) => const RegistrationScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Root(),
        );
    }
  }
}
