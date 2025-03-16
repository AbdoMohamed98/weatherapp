import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/customappbar.dart';

class Noweatherview extends StatelessWidget {
  const Noweatherview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          const Customappbar(), // App bar at the top
          Expanded(
            // Ensures content takes available space
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('There is no weather 😔 start'),
                  Text('Searching now 🔍'),
                ],
              ),
            ),
          ),
        ],
      );
  }
}