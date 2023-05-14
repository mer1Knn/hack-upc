// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iwd23/screens/auth_screen.dart';
import 'package:iwd23/screens/pageView/p2_view.dart';

class P1View extends StatelessWidget {
  const P1View({super.key});

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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AuthScreen()),
                      );
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Color.fromARGB(255, 180, 180, 180),
                        fontSize: 16,
                        decoration: TextDecoration
                            .underline, // add underline to indicate it's clickable
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/p1.png"),
            ),
          ),
          SizedBox(
            height: 120,
            child: Column(
              children: [
                Text(
                  "Create a better",
                  style: TextStyle(fontSize: 42),
                ),
                Text("future",
                    style: TextStyle(
                        fontSize: 42, color: Color.fromARGB(255, 255, 42, 0))),
              ],
            ),
          ),
          SizedBox(
              height: 70,
              width: 250,
              child: Expanded(
                  child: Text(
                      textAlign: TextAlign.center,
                      "Together, let's take small steps towards a more sustainable world and earn rewards along the way."))),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: Color.fromARGB(255, 255, 42, 0),
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
                backgroundColor: Color.fromARGB(255, 180, 180, 180),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 40),
                  backgroundColor: Color.fromARGB(255, 255, 42, 0)),
              onPressed: () {
                P2View();
              },
              child: Text("Suivant")),
        ]),
      ),
    );
  }
}
