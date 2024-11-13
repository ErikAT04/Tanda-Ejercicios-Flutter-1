import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Texto 1"),
              SizedBox(height: 10),
              Text("Texto 2"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){print("Hola Mundo");}, child: Text("Botón")),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: (){print("Adios Mundo");}, child: Text("Botón2"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
