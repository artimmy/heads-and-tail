import 'package:flutter/material.dart';

class Result extends StatefulWidget {

  String value;

  Result(this.value, {Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {

    String imagePath;

    if ( widget.value == "head") 
    {
      imagePath = "images/head.png";
    } 
    else 
    {
      imagePath = "images/tail.png";
    }

    return Scaffold(
      //backgroundColor: Colors.green,
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: const Color.fromRGBO(255, 204, 128, 0.9), // from 0 to 1 : 0.1 / 0.5 / 0.8 ...
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(imagePath),
          GestureDetector(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Image.asset("images/back_button.png"),
          ),
        ],
      ),
    );
  }
}