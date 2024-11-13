import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  
  
  @override
  State<StatefulWidget> createState() {
    return _stateMain();
  }
}

class _stateMain extends State<MainApp> {
  int incremento = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("Botón presionado $incremento vez/veces"),
            ElevatedButton(onPressed: (){setState(() {
              incremento++;
            });;}, child: const Text("Botón")),
          ],
        ),
      ),
    );
  }
}
