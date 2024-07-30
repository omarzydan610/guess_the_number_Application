import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guess_the_number/Pages/GmaePage.dart';
import 'package:guess_the_number/Pages/HomePage.dart';

class LosserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Return false to prevent back navigation
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "Losser",
                  style: TextStyle(
                      color: Color.fromARGB(255, 249, 10, 10),
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Hard Luck the number was " + number.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    SizedBox(
                      height: 60,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Text(
                          "Home Page",
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Background color
                          onPrimary: Colors.lightBlue, // Text color
                          shadowColor: Colors.black, // Shadow color
                          elevation: 5, // Elevation
                          textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Spacer(),
                    SizedBox(
                      height: 60,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          current.clear();
                          choosen.clear();
                          var random = Random();
                          number = 1 + random.nextInt(99);
                          print(number);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return GamePage();
                          }));
                        },
                        child: Text(
                          "Try Again",
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Background color
                          onPrimary: Colors.lightBlue, // Text color
                          shadowColor: Colors.black, // Shadow color
                          elevation: 5, // Elevation
                          textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
                Spacer(),
                Spacer(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
