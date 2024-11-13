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
  List<String> lista = ["Hola Mundo", "No", "Si", "A"];
  List<bool> listaCheck = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, count) {
                bool status = false;
                TextStyle uncheckedStyle = TextStyle(color: Colors.black);
                TextStyle checkedStyle = TextStyle(
                    color: Colors.grey, decoration: TextDecoration.lineThrough);
                return ListTile(
                    leading: Checkbox(
                        value: listaCheck[count],
                        onChanged: (value) {
                          setState(() {
                            listaCheck[count] = value!;
                          });
                        }),
                    title: Text(lista[count],
                        style: (listaCheck[count])
                            ? checkedStyle
                            : uncheckedStyle));
              })),
    );
  }
}
