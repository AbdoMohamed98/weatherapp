import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 52, 121, 167),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        children: [
          const Text(
            'Weather',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'Searchview'); // ✅ Directly navigate
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
