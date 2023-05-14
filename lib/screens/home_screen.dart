// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:iwd23/models/event.dart';
import 'package:iwd23/myProvider.dart';
import 'package:iwd23/screens/HomePage/widgets/adviceCard.dart';
import 'package:iwd23/screens/HomePage/widgets/challengCard.dart';
import 'package:iwd23/screens/HomePage/widgets/homeEvents.dart';
import 'package:iwd23/screens/HomePage/widgets/postHome.dart';
import 'package:iwd23/screens/HomePage/widgets/searchbar.dart';
import 'package:iwd23/screens/events.dart';
import 'package:iwd23/screens/notificationPage.dart';
import 'package:iwd23/screens/profile_screen.dart';
import 'package:provider/provider.dart';

const uri = "http://192.168.43.43:5000";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<List<Event>> getEvent() async {
    try {
      final res = await http.get(
        Uri.parse("$uri/api/events/all"),
      );

      final events = jsonDecode(res.body) as List;
      print(events);
      return events.map((e) => Event.fromMap(e)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        height: 44,
                        width: 44,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()),
                            );
                          },
                          child: Image.asset("assets/images/profile.png"),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 17,
                        width: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                                color: Color.fromARGB(255, 255, 200, 0))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset("assets/images/points.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(3, 0, 0, 3),
                              child: Text(
                                "300",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 255, 200, 0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()),
                      );
                    },
                    child: SvgPicture.asset("assets/images/notification.svg"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "Hello user name",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 143, 138, 135)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Help and earn points with",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "HANDS-ON",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 42, 0)),
            ),
            SizedBox(
              height: 24,
            ),
            SearchBar(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your friend participated in:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            FutureBuilder(
              future: getEvent(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Event>? events = snapshot.data;
                  if (events != null) {
                    return GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 300,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 0,
                          crossAxisCount: 2,
                          childAspectRatio: 3 / 4),
                      itemCount: events.length,
                      itemBuilder: ((context, index) =>
                          PostHome(userName: "userName", event: events[index])),
                    );
                  }
                  return Text('Error');
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {},
                  child: Text('See more',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 42, 0)))),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Event in view !👀",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ]),
        ),
        HomeEventCard(
            url: "assets/images/HomeBig.png",
            title: "Are you ready to join our newest event",
            desc:
                "By recycling you used plastic bottle or back you can bring a big difference  in the plastic wast "),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Text(
            "Protecting Our Planet Starts with You",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        AdviceCard(
          url: "assets/images/icon.png",
          title: "Reduce, reuse, and recycle",
          desc:
              "Cut down on what you throw away. Follow the three \"R's\"to conserve natural resources and landfill space.",
        ),
        SizedBox(
          height: 15,
        ),
        AdviceCard(
          url: "assets/images/icon.png",
          title: "Reduce, reuse, and recycle",
          desc:
              "Cut down on what you throw away. Follow the three \"R's\"to conserve natural resources and landfill space.",
        ),
        SizedBox(
          height: 15,
        ),
        AdviceCard(
          url: "assets/images/icon.png",
          title: "Reduce, reuse, and recycle",
          desc:
              "Cut down on what you throw away. Follow the three \"R's\"to conserve natural resources and landfill space.",
        ),
        SizedBox(
          height: 15,
        ),
        AdviceCard(
          url: "assets/images/icon.png",
          title: "Reduce, reuse, and recycle",
          desc:
              "Cut down on what you throw away. Follow the three \"R's\"to conserve natural resources and landfill space.",
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Text(
            "And what about some challenges?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ChallengeCard(title: "Challenge Title", url: "assets/images/post.png"),
        SizedBox(
          height: 150,
        ),
      ],
    );
  }
}
