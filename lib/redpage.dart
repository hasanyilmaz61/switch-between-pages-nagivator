import 'package:flutter/material.dart';

import 'yellow.dart';

class pagered extends StatefulWidget {
  const pagered({Key? key}) : super(key: key);

  @override
  State<pagered> createState() => _pageredState();
}

class _pageredState extends State<pagered> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          title: Text(
            "Blue Page",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Red page",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              OutlinedButton(
                child: Text("go yellow page"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, minimumSize: Size(30, 40)),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => yellowpage(),
                        ));
                  });
                },
              ),
              OutlinedButton(
                child: Text("<= BACK"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, minimumSize: Size(30, 40)),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
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
