
import 'package:flutter/material.dart';

class HomeEventCard extends StatelessWidget {
   const HomeEventCard({super.key, required this.url, required this.title, required this.desc});
final String url,title,desc;
  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10) ,
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(url),
                    fit: BoxFit.cover)),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 33),
              ),
              Text(
                desc,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 15,),
              ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 40),
                    backgroundColor: Colors.white),
                  onPressed: (){}, child: const Text("Check",style: TextStyle(color: Colors.black, fontSize: 17))),
              )

            ]),
          );
  }
}