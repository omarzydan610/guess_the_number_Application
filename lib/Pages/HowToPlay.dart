import 'package:flutter/material.dart';

class HowTOPlay extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.lightBlue,
            appBar: AppBar(
              backgroundColor: Colors.lightBlue,
              title: Text(
                "How To Play",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: Column(
              children: [
                Center(
                  child: Card(
                    color: Colors.amber[50],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 500,
                        width: 398,
                        child: Text(
                          "\nYou have 7 trials to guess the correct number.\n\n*In  each trial you choose a number and you get a responce if the number you chose is smaller or greater than the correct number. \n\n*If you guessed the number correctly you win and game ends.\n\n*If you guessed the number wrongly 7 times the game ends and you lose.",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
