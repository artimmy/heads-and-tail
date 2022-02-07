import 'dart:math';
import 'package:flutter/material.dart';
import 'package:heads_tail/result.dart';

class Play extends StatefulWidget {
  const Play({ Key? key }) : super(key: key);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  void _displayResult() // creating a function to be called everytime the user press the button 'play'
  {
    var items = ["head", "tail"]; // creating a array 'items' with both options "head or tail"
    var rand = Random().nextInt(2); // generating a random number 'rand'
    var result = items[rand]; // generating a result to be sent to the next window

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(result) // sending the result to the next window
        )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: const Color.fromRGBO(255, 204, 128, 0.9), // from 0 to 1 : 0.1 / 0.5 / 0.8 ...
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset("images/logo.png"),
          GestureDetector(
            onTap: _displayResult,
            child: Image.asset("images/play_button.png"),
          ),
        ],
      ),
    );
  }
}
