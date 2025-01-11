import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image or icon display of medical service
            // Image.asset(
            //   'lib/images/front_image.png',
            //   // height: 300,
            // ),
            Text(
              'Image or icon of medical service.',
              style: TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Get access to essential digital medical services whereever you are.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'GHANA POLICE HOSPITAL',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            //Add a button
          ],
        ),
      ),
    );
  }
}
