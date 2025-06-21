// TODO Implement this library.
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _sendOTP() {
    if (_formKey.currentState!.validate()) {
      final phone = _phoneController.text.trim();
      Navigator.pushNamed(
        context,
        '/otp',
        arguments: phone,
      ); // Navigate to OTP screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/login_illustration.png',
                  width: 220,
                  height: 220,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Welcome to Clapwise",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Enter your mobile number to continue",
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  decoration: InputDecoration(
                    labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.length != 10) {
                      return "Enter a valid 10-digit number";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _sendOTP,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Color(0xFF2563EB), // Clapwise blue
                  ),
                  child: Text("Send OTP", style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
