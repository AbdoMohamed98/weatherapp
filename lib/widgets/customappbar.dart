import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 52, 121, 167),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: const Text('weather'),
          ),
          Spacer(flex: 1,),
          IconButton(onPressed: () {
            
          }, icon:Icon(Icons.search) )
        ],
      ),
    );
  }
}