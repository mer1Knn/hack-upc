import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/event.dart';
import 'HomePage/widgets/postHome.dart';

const uri = "http://192.168.43.43:5000";
class Feed extends StatelessWidget {
  const Feed({super.key});
 Future<List<Event>> getEvent()async{
       try {
                final res = await http.get(Uri.parse("$uri/api/events/all") , 
              
                
                );

                final events = jsonDecode(res.body) as List ; 
                print(events);
                return events.map((e) => Event.fromMap(e)).toList();

       } catch (e) {
        print(e);
        return [];
         
       }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset("assets/images/profile.png",)),
            const SizedBox(height: 15,),
            RichText(text: const TextSpan(
              
              text: "Take a look at other people's",
              style: TextStyle(
                fontSize: 24,
                        color: Colors.black,
                        
                      ),
              children: [
                TextSpan(text: " experience 🌟😁",style: TextStyle(
                  fontSize: 24,
                        color: Color.fromARGB(255, 255, 42, 0),
                        
                      ),)

            ])),
            const SizedBox(height: 15,),
            FutureBuilder(
                future: getEvent(),
                builder: (context, snapshot)  {
                if(snapshot.hasData) {
                  List<Event>? events = snapshot.data;
                  if(events != null) {
                    return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 300,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 0,
                        crossAxisCount: 2,
                        childAspectRatio: 3/4
                      ),
                      itemCount: events.length,
                      itemBuilder: ((context, index) => PostHome(userName: "userName", event: events[index])),
                        
                      );

                  }
                   return const Text('Error');
                  
                }
              
                else{
                  return const Center(
                    child: CircularProgressIndicator(),
                  );

                }
              },),
        ],
      ),
    );
  }
}