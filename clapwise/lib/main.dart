import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FixzoApp());
}

class FixzoApp extends StatelessWidget {
  const FixzoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clapwise',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
