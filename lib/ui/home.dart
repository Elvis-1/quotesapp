

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
    int _index = 0;
   List quotes = [
  "It is better to remain silent at the risk of being thought a fool, than to talk and remove all doubt of it.",
    "The fool doth think he is wise, but the wise man knows himself to be a fool",
    "Whenever you find yourself on the side of the majority, it is time to reform (or pause and reflect",
     " Always Do What You Are Afraid To Do",
     "The best way out is always through"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(quotes[_index % quotes.length]),
          FlatButton.icon(onPressed: _showQuote,
            icon: Icon(Icons.wb_sunny),
            label: Text("Inspire Me"),)
        ],
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index +=1;
    });

  }
}
