import 'package:flutter/material.dart';
import 'package:iwd23/widgets/postcard_widget.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          Stack(children: [
            Container(
              height: 130,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Rectangle 6.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: const FractionalTranslation(
                translation: Offset(0.0, 0.5),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Ellipse 38.png'),
                  radius: 60.0,
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
          const Text("Username",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(
            height: 20,
            width: 48,
            child: Row(children: [
              // SizedBox(
              //   width: 6,
              // ),
              Image.asset("images/points.png"),
              const SizedBox(
                width: 3,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(3, 0, 0, 3),
                child: Text(
                  "300",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 200, 0)),
                ),
              ),
            ]),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: Text(
                  '12\nPosts',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '120\nFollowers',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 40), backgroundColor: Colors.white),
              onPressed: () {},
              child: const Text(
                "Follow",
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 20,
          ),
          const PostCard(),
          const PostCard(),
        ]),
      ]),
    );
  }
}
