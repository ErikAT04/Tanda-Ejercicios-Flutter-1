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
  bool onOff = true;
  ThemeData themeData = ThemeData.light();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        body: Column(children: [
          Text('Hello World!'),
          Switch(
              value: onOff,
              onChanged: (value) {
                setState(() {
                  if (value) {
                    themeData = ThemeData.light();
                  } else {
                    themeData = ThemeData.dark();
                  }
                  onOff = !onOff;
                });
              })
        ]),
      ),
    );
  }
}
