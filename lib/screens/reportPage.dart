import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Report garbage",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Where",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Description",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Add some pictures",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.add),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
