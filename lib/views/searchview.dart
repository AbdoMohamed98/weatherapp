import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/wethercubit/getweathercubit.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search city'),
        backgroundColor: const Color.fromARGB(255, 52, 121, 161),
      ),
      body: 
      Center(
        child: Padding(
          padding: EdgeInsets.only(left: 150, right: 150),
          child: TextField(
            onSubmitted: (value) async {
              var getweathercubit = BlocProvider.of<Getweathercubit>(context);
              await getweathercubit.getweatherinfo(cityname: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.black)),
                hintText: 'Enter City Name',
                labelText: 'Search'),
          ),
        ),
      ),
    );
  }
}
