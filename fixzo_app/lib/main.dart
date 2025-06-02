import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(FixzoApp());
}

class FixzoApp extends StatelessWidget {
  const FixzoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fixzo',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
