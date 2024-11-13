import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State<MainApp> {
  final _formkey =
      GlobalKey<FormState>(); //Creo y guardo una clave para el formulario
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: ListView(),
            bottomNavigationBar: BottomNavigationBar(items: items),
            body: Column(
      children: [
        Form(
          key: _formkey,
          //Formulario
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Introduce un nombre"), //Añadir texto
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Se requieren cambios';
                  } else {
                    return null; //No hay fallos
                  }},)],),),
        TextButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                print("Enviado");
              } else {
                print("Hay problemas");
              }
            },
            child: Text("Enviar"))
      ],
    )));
  }
}
