import 'package:flutter/material.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/auth/presentation/pages/otp_page.dart'; // You will create this file next

void main() {
  runApp(const ClapwiseApp());
}

class ClapwiseApp extends StatelessWidget {
  const ClapwiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clapwise Client',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/otp': (context) => const OtpPage(),
      },
    );
  }
}
