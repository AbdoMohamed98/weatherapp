import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: Center(
      child: Padding(
        padding: EdgeInsets.only(left: 150,right: 150),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),borderSide: BorderSide(color: Colors.black)
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),borderSide: BorderSide(color: Colors.black)
            ),
            hintText: 'Enter City Name',
            labelText: 'Search'
          ),
          
        ),
      ),
    ),
    );
  }
}