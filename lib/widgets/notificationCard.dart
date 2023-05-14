

import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          ListTile(
                    leading: Image.asset("assets/images/profile.png"),
                    title: const Text("User name",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    subtitle: const Text("Agency name ajouter un nouveau poste",style:TextStyle(fontSize: 14) ,),
                    trailing: const Text("09:15 am",style:TextStyle(fontSize: 12) ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 2,width:double.infinity,
                  )
        ],
      ),
    );
  }
}