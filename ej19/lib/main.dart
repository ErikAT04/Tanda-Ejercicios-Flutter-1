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
  double cuenta = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: cuenta / 100,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    cuenta++;
                  });
                },
                child: Text("Aumentar"))
          ],
        )),
      ),
    );
  }
}
