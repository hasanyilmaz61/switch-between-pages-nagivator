import 'package:flutter/material.dart';

import 'redpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page(),
    );
  }
}

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          title: Text(
            "Red Page",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1.page",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              OutlinedButton(
                child: Text("go red page"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, minimumSize: Size(30, 40)),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pagered(),
                        ));
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
