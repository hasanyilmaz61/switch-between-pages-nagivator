import 'package:flutter/material.dart';

import 'main.dart';

class yellowpage extends StatefulWidget {
  const yellowpage({Key? key}) : super(key: key);

  @override
  State<yellowpage> createState() => _yellowpageState();
}

class _yellowpageState extends State<yellowpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          title: Text(
            "Yellow Page",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "yellow page",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              OutlinedButton(
                child: Text("<= go homepage"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, minimumSize: Size(30, 40)),
                onPressed: () {
                  setState(() {
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
