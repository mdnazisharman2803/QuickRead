import 'package:flutter/material.dart';
import 'package:flutter_dartified/screens/export_screens.dart';
import 'package:flutter_dartified/utils/export_utils.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LandingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2327),
      body: Center(
        child: Image.asset(
          ImageConstants.logoImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
