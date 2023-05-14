

import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({super.key, required this.title, required this.url});
final String title,url;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 66,
          decoration: BoxDecoration( 
            color: const Color.fromARGB(255, 241, 245, 254),
            borderRadius: BorderRadius.circular(10)
            ),
         
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child:Row(
          children: [
            const SizedBox(width: 10,),
            Image.asset(url,height: 44,width: 44,fit: BoxFit.fill,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                    const Text(
                    " Know more about it",
                    style: TextStyle(fontSize: 11, color: Color.fromARGB(255, 106, 106, 106)),
                    textAlign: TextAlign.left,
                  ),
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Image.asset("assets/images/more.png"),
          )
          ],
         )
          ,);
  }
}