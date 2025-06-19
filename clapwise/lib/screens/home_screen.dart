import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'booking_screen.dart';
import 'bookings_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clapwise Services")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("View Map"),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MapScreen())),
            ),
            ElevatedButton(
              child: const Text("Book a Service"),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BookingScreen())),
            ),
            ElevatedButton(
              child: const Text("My Bookings"),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BookingsListScreen())),
            ),
          ],
        ),
      ),
    );
  }
}