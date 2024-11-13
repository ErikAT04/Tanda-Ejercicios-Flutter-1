import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StateMain();
  }
}

class StateMain extends State<MainApp> {
  final _formkey =
      GlobalKey<FormState>(); //Creo y guardo una clave para el formulario
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: 500,
            child: Form(
                key: _formkey,
                child: Column(children: [
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        } else {
                          return null; //No salta error
                        }
                      },
                      decoration:
                          InputDecoration(labelText: "Introduce un nombre")),
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        } else {
                          if (value.contains("@")) {
                            return null; //No salta error
                          } else {
                            return 'Debes introducir un correo electrónico';
                          }
                        }
                      },
                      decoration:
                          InputDecoration(labelText: "Introduce un correo")),
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo requerido';
                        } else {
                          return null; //No salta error
                        }
                      },
                      obscureText: true, //Tipo contraseña
                      autocorrect: false,
                      decoration: InputDecoration(
                          labelText: "Introduce una contaseña")),
                  FloatingActionButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print("Formulario enviado correctamente");
                      } else {
                        print("Hay errores en el formuladio");
                      }
                    },
                    child: Text("Enviar"),
                  )
                ]))),
      ),
    );
  }
}
