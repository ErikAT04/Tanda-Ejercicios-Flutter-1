import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}

class MainState extends State<MainApp> {
  Color bgColor = Colors.red;
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: GestureDetector(
          onTap: () {
            Color colorAux = bgColor;
            setState(() {
              bgColor = boxColor;
              boxColor = colorAux;
            });
          },
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
