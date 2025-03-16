import 'package:flutter/material.dart';

class Weatherinfoview extends StatelessWidget {
  const Weatherinfoview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                     Text('cityname'),
                     Text('updated at :23:46')
                  ],
                )
              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/image1.jpg')),
                Padding(
                  padding: const EdgeInsets.only(left: 150,right: 150),
                  child: Text('current temp'),
                ),
                Column(
                  children: [
                    Text('maxtem:17'),
                    Text('maxtem:17'),
                  ],
                )
              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('lightrain')
              ],
            )
          ],
          
        ),
      ),
    );
  }
}