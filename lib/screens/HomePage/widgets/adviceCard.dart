

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AdviceCard extends StatelessWidget {
   const AdviceCard({super.key, required this.title, required this.url, required this.desc});
  final String title,url,desc;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 90,
          decoration: BoxDecoration( 
            color: Color.fromARGB(255, 241, 245, 254),
            borderRadius: BorderRadius.circular(10)
            ),
         
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child:Row(
          children: [
            SizedBox(width: 10,),
            Image.asset(url,height: 55,width: 55,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                    Text(
                    desc,
                    style: TextStyle(fontSize: 11, color: Color.fromARGB(255, 106, 106, 106)),
                    textAlign: TextAlign.left,
                  ),
                  ],
                ),
              ),
            )
          ],
         ) ,);
  }
}