import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FixzoApp());
}

class FixzoApp extends StatelessWidget {
  const FixzoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clapwise',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'FiraCode',
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}