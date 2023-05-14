import 'package:flutter/material.dart';

import 'p1_view.dart';
import 'p2_view.dart';
import 'p3_view.dart';
import 'p4_view.dart';

class Page_View extends StatelessWidget {
  Page_View({super.key});
  List pView = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [P1View(), P2View(), P3View(), P4View()],
      ),
    );
  }
}
