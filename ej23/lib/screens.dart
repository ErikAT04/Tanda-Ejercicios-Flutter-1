import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  
  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}

class MainState extends State<MainScreen> {
  String texto = "Texto";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('Hola, $texto'),
              TextButton(onPressed: () async {final resultado = await Navigator.pushNamed(context, "/form");
              setState(() {
                texto = resultado.toString();
              });}, child: Text("Ir al formulario"))
            ],
          )
        ),
      );
  }
}

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Form(child: 
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Escribe un nombre"),
                  ),
                  TextButton(onPressed: (){}, child: Text("Enviar"))
                ],
              ))
            ],
          )
        )
      );
  }
}