import 'package:flutter/material.dart';
import '../models/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(service.image, width: 60, height: 60),
          const SizedBox(height: 8),
          Text(service.name, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
