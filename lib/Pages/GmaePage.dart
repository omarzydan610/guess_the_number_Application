import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guess_the_number/Pages/HomePage.dart';
import 'package:guess_the_number/Pages/LosserPage.dart';
import 'package:guess_the_number/Pages/WinnerPage.dart';

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => _GamePageState();
}

TextEditingController current = TextEditingController();
List<int> choosen = [];

class _GamePageState extends State<GamePage> {
  void addNumber() {
    if (current.text.isNotEmpty) {
      int? num = int.tryParse(current.text);
      if (num != null) {
        setState(() {
          if (num == number) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return WinnerPage();
              },
            ));
          } else if (choosen.length == 6) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return LosserPage();
              },
            ));
          } else {
            choosen.add(num);
            current.clear();
          }
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter a valid integer')),
        );
      }
    }
  }

  String check(int x) {
    if (x > number) {
      return "Smaller";
    } else {
      return "Greater";
    }
  }

  String allign(int x) {
    if (x < 10) {
      return x.toString() + "               ";
    } else if (x < 100) {
      return x.toString() + "            ";
    } else {
      return x.toString() + "          ";
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Guess The Number",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(children: [
              Container(
                child: TextField(
                  controller: current,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      labelText: "Enter a Number Between 1 & 100",
                      labelStyle:
                          TextStyle(color: Colors.lightBlue, fontSize: 20),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Colors.lightBlue),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.5, color: Colors.lightBlue))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: addNumber,
                    child: Text(
                      "Chaeck Number",
                      style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    )),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: choosen.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          (index + 1).toString() +
                              " =>               " +
                              allign(choosen[index]) +
                              "        " +
                              check(choosen[index]),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
