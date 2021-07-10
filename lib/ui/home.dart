

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
     "The best way out is always through","When someone loves you, the way they talk about you is different. You feel safe and comfortable.",
     "Knowing yourself is the beginning of all wisdom.","The only true wisdom is in knowing you know nothing.",
     "The saddest aspect of life right now is that science gathers knowledge faster than society gathers wisdom.",
     "Count your age by friends, not years. Count your life by smiles, not tears.","Hold fast to dreams"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                  height: 200,
                  width: 350,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.5),
                  ),
                  child: Center(child: Text(quotes[_index % quotes.length],style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16.5,
                  fontStyle: FontStyle.italic,),
                  )
                    ,)
              ),
            ),
          ),
          Divider(thickness: 1.3,),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: FlatButton.icon(onPressed: _showQuote,
              color: Colors.greenAccent.shade700,
              icon: Icon(Icons.wb_sunny),
              label: Text("Inspire Me",
                style: TextStyle(color: Colors.white,
                fontSize: 18.8,),
              ),
            ),
          ),
          Spacer(),
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
