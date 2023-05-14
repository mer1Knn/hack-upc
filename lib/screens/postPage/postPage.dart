// ignore_for_file: prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/PostExample.png",),
                    fit: BoxFit.cover)),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            GestureDetector(
              onTap: () {
                
              },
              child: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
            Container(
              //padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
              height: 20,width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 255, 42, 0).withOpacity(0.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Icon(Icons.favorite,color:Color.fromARGB(255, 255, 42, 0),size: 15,),
              const Text("350",style: TextStyle(color: Colors.white,fontSize: 13),)
              
              ],),
            )
           ],),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Image.asset("assets/images/profile.png",height: 40,width: 40,),
                  const SizedBox(width: 5,),
                  const Text("Agency's name",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),)
                ],),
                const SizedBox(height: 15,),
                const Text("Trip Title",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
                const SizedBox(height: 15,),
                const Text("Trip description, The trip description should be usefull and should not be more then lets say 100 word yes am writing a lot of word to see how 100 word will fit in the screen ok we still have a lot of word to write and now am asking my self if i should limit the description ...",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.left,
                ),
                const SizedBox(height: 15,),
                const Text("Comments",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
               Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromARGB(255, 241, 245, 254),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      width: 300,
      height: 44,
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
               "assets/images/send.svg",
               height: 35,
               width: 35,
               color: Colors.black,
              ),
            ),
            
            hintText: "Comment",
            hintStyle:TextStyle(fontSize:20, color:Colors.grey.withOpacity(0.5))
            ),
            
      ),
    )

              ],
            ),
          ),
          
        ],
      ),
    );
  }
}





//  CircleAvatar(
//                   radius: 25,
//                   backgroundColor: Colors.white,
//                   child: SvgPicture.asset("assets/images/send.svg")),