// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iwd23/screens/auth_screen.dart';

class P4View extends StatelessWidget {
  const P4View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "",
                  style: TextStyle(
                      color: Color.fromARGB(255, 180, 180, 180), fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/p4.png"),
            ),
          ),
          SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Start a new", style: TextStyle(fontSize: 42)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text("nouvelle", style: TextStyle(fontSize: 42)),
                    Text(" adventure",
                        style: TextStyle(
                            fontSize: 42,
                            color: Color.fromARGB(255, 255, 42, 0))),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
              height: 70,
              width: 250,
              child: Expanded(
                  child: Text(
                      textAlign: TextAlign.center,
                      "Begin your green journey and start a new adventure towards a healthier planet."))),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: Color.fromARGB(255, 180, 180, 180),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Color.fromARGB(255, 180, 180, 180),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Color.fromARGB(255, 180, 180, 180),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Color.fromARGB(255, 255, 42, 0),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 40),
                    backgroundColor: Color.fromARGB(255, 255, 42, 0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                  );
                },
                child: Text("Suivant")),
          ),
        ]),
      ),
    );
  }
}
