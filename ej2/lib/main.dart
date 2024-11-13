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
              const Text("Texto1"),
              const Text("Texto2"),
              const Text("Texto3"),
              ElevatedButton(onPressed: (){print("Hola mundo");} , child: const Text("Botón"))
            ],
          )
        ),
      ),
    );
  }
}
