import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iwd23/main.dart';

class RecentEvent extends StatelessWidget {
  const RecentEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        const Image(
          image: AssetImage("lib/assets/images/seisme.png"),
        ),
        Column(
          children: [
            const Text(
              "Earthquake disaster",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Japan marks 12 years since tsunami and nuclear disaster, Japan has marked ...",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Text(
                  "Earthquake disaster",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Japan marks 12 years since tsunami and nuclear disaster, Japan has marked ...",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "@association-name",
                      style: TextStyle(fontSize: 9.5),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.calendar_month),
                    Text(
                      "12 Jan - 16 Jan",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
