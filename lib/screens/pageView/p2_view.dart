import 'package:flutter/material.dart';
import 'package:iwd23/screens/auth_screen.dart';
import 'package:iwd23/screens/pageView/p3_view.dart';

class P2View extends StatelessWidget {
  const P2View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(children: [
          const SizedBox(
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
                        MaterialPageRoute(builder: (context) => const AuthScreen()),
                      );
                    },
                    child: const Text(
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
              child: Image.asset("assets/images/p2.png"),
            ),
          ),
          SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Help",
                  style: TextStyle(
                      fontSize: 42, color: Color.fromARGB(255, 255, 42, 0)),
                ),
                Text("&", style: TextStyle(fontSize: 42)),
                Text("Win",
                    style: TextStyle(
                        fontSize: 42, color: Color.fromARGB(255, 255, 42, 0))),
              ],
            ),
          ),
          const SizedBox(
              height: 70,
              width: 250,
              child: Expanded(
                  child: Text(
                      textAlign: TextAlign.center,
                      "Earn points for every eco-friendly action you take and climb the ranks to win amazing rewards"))),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 40),
                  backgroundColor: const Color.fromARGB(255, 255, 42, 0)),
              onPressed: () {
                const P3View();
              },
              child: const Text("Suivant")),
        ]),
      ),
    );
  }
}
