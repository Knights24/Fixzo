import 'package:flutter/material.dart';
import '../widgets/service_card.dart';
import '../models/service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Service> services = [
      Service(name: 'Plumber', image: 'assets/images/plumber.png'),
      Service(name: 'Electrician', image: 'assets/images/electrician.png'),
      Service(name: 'Carpenter', image: 'assets/images/plumber.png'),
      Service(name: 'Painter', image: 'assets/images/electrician.png'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Fixzo'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: services.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) =>
              ServiceCard(service: services[index]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
