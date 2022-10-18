import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class GamifyApp extends StatelessWidget {
  const GamifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomScreen(),
    );
  }
}
