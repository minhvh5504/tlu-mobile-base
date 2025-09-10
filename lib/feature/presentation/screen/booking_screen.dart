import 'package:flutter/material.dart';
import 'package:project_demo/feature/presentation/widgets/header.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: Center(
              child: Text(
                'Booking Screen',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
