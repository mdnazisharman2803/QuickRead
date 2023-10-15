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
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.tabNavigation:
        return MaterialPageRoute(
          builder: (_) => const TabNavigation(),
        );
      case Routes.howItWorksScreen:
        return MaterialPageRoute(
          builder: (_) => const HowItWorksScreen(),
        );
      case Routes.historyScreen:
        return MaterialPageRoute(
          builder: (_) => const HistoryScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Root(),
        );
    }
  }
}
