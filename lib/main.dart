import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color? _color;

  Color? _textBackgroundColor;

  Random _random = new Random();

  void randomColor() {
    setState(() {
      int red, green, blue;
      red = _random.nextInt(255);
      green = _random.nextInt(255);
      blue = _random.nextInt(255);

      _color = Color.fromARGB(255, red, green, blue);

      _textBackgroundColor = Color.fromARGB(150, red, green, blue);
    });
  }

  @override
  void initState() {
    randomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => randomColor(),
      child: Container(
        alignment: Alignment.center,
        color: _color,
        child: Container(
          padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            " Hey there !",
            style: TextStyle(
                fontSize: 60,
                fontFamily: "PlayfairDisplay",
                color: Colors.white,
                backgroundColor: _textBackgroundColor,
                ),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
