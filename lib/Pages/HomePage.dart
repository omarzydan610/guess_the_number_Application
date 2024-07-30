import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guess_the_number/Pages/GmaePage.dart';
import 'package:guess_the_number/Pages/HowToPlay.dart';

int number = 0;

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Spacer(),
          Image(
              image: AssetImage(
                  "Images/Screenshot 2024-07-30 at 2.36.40 PM_prev_ui.png")),
          Spacer(),
          SizedBox(
            height: 75,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                current.clear();
                choosen.clear();
                var random = Random();
                number = 1 + random.nextInt(99);
                print(number);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GamePage();
                }));
              },
              child: Text(
                "Start",
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Background color
                onPrimary: Colors.lightBlue, // Text color
                shadowColor: Colors.black, // Shadow color
                elevation: 5, // Elevation
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3.5)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HowTOPlay();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue, // Background color
                onPrimary: Colors.white, // Icon color // Shadow color
                shape: CircleBorder(),
              ),
              child: Icon(
                Icons.question_mark_rounded,
                size: 35,
              ),
            ),
          ),
          Spacer(),
          Spacer()
        ]),
      ),
    );
  }
}
