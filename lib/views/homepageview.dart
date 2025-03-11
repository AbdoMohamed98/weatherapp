import 'package:flutter/material.dart';

class Homepageview extends StatelessWidget {
  const Homepageview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('there is no weather😔start',style: TextStyle(
            color: Colors.black
          ), ),
          Text('searching now 🔍',style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}