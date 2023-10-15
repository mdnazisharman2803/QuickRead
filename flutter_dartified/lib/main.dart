import 'package:flutter/material.dart';
import 'package:flutter_dartified/config/customRouter.dart';
import 'package:flutter_dartified/config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: const Color(0xFF1D2327),
      ),
      onGenerateRoute: CustomRouter.generateRoute,
      initialRoute: Routes.root,
    );
  }
}
