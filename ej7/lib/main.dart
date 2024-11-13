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
          body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 640,
                height: 360,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                        top: BorderSide(
                            width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        bottom: BorderSide(
                            width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        left: BorderSide(
                            width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        right: BorderSide(
                            width: 1, color: Color.fromARGB(255, 0, 0, 0)))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Escribe tu nombre: "),
                        SizedBox(width: 120, child: TextField(),)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Escribe tu apellido: "),
                        SizedBox(width: 120, child: TextField(),)
                      ]
                    ),
                    const SizedBox(height: 20,),
                    // ignore: avoid_print
                    FloatingActionButton(child: Text("Enviar"), onPressed: (){print("Enviado correctamente");})
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
