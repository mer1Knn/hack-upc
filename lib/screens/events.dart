import 'package:flutter/material.dart';

import '../widgets/recentEvent.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: const [
        RecentEvent(),
        RecentEvent(),
      ]),
    ));
  }
}
