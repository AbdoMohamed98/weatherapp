import 'package:flutter/material.dart';
import 'package:weatherapp/models/getwethermodel.dart';

class Weatherinfoview extends StatelessWidget {
  const Weatherinfoview({super.key, required this.getwethermodellll});
  final Getwethermodel getwethermodellll;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(getwethermodellll.cityname),
                    Text('updated at : ${getwethermodellll.updatetime}')
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.network(getwethermodellll.image)),
                Padding(
                  padding: const EdgeInsets.only(left: 150, right: 150),
                  child: Text(getwethermodellll.temp.toString()),
                ),
                Column(
                  children: [
                    Text('maxtem:${getwethermodellll.maxtemp.toString()}'),
                    Text('maxtem:${getwethermodellll.mintemp.toString()}'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(getwethermodellll.condition)],
            )
          ],
        ),
      ),
    );
  }
}
