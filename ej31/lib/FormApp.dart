import 'dart:math';

import 'package:flutter/material.dart';

class FormApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormAppState();
  }
}

class FormAppState extends State<FormApp> {
  String valorDropDown = "Si";
  final _emailController = TextEditingController();
  final _unameController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();
  String errorEmail = "";
  String errorUname = "";
  String errorPass = "";
  String errorConfirm = "";

  final _formKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulario a realizar:")),
      body: Center(
        child: Column(
          children: [
            Form(
                child: Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: Column(
                      key: _formKey,
                      children: [
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              hintText: "Escribe un correo electrónico",
                              errorText:
                                  (errorEmail.isEmpty ? null : errorEmail)),
                        ),
                        TextField(
                          controller: _unameController,
                          decoration: InputDecoration(
                              hintText: "Escribe el nombre de usuario",
                              errorText:
                                  (errorUname.isEmpty ? null : errorUname)),
                        ),
                        TextField(
                          controller: _passController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Escribe tu contraseña",
                              errorText:
                                  (errorPass.isEmpty ? null : errorPass)),
                        ),
                        TextField(
                          controller: _confirmPassController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Repite tu contraseña",
                              errorText:
                                  (errorConfirm.isEmpty ? null : errorConfirm)),
                        ),
                      ],
                    ))),
            DropdownButton<String>(
                value: valorDropDown,
                items: [
                  DropdownMenuItem(
                      value: "Si", child: Text("Acepto los Términos")),
                  DropdownMenuItem(
                      value: "No", child: Text("No acepto los Términos"))
                ],
                onChanged: (value) {
                  setState(() {
                    if (value != null) {
                      valorDropDown = value;
                    }
                  });
                }),
            TextButton(
                onPressed: () {
                  _confirmPassController.clear();
                  _passController.clear();
                  _unameController.clear();
                  _emailController.clear();
                },
                child: Text("Borrar contenido del formulario")),
            TextButton(
                onPressed: () {
                  bool correcto = true;

                  String correo = _emailController.text;
                  if (correo == null || correo.isEmpty) {
                    errorEmail = "Debes rellenar el campo";
                    correcto = false;
                  } else if (RegExp(r'^[a-zA-Z0-9]+@[a-z]+\.[a-z]{3}$')
                      .hasMatch(correo)) {
                    errorEmail = "";
                  } else {
                    errorEmail = "No cumple los criterios especificados";
                    correcto = false;
                  }

                  String nombre = _unameController.text;
                  if (nombre == null || nombre.isEmpty) {
                    errorUname = "Rellena el campo correctamente";
                    correcto = false;
                  } else if (nombre.toLowerCase() == "admin") {
                    errorUname = "No se puede poner ese usuario";
                    correcto = false;
                  } else {
                    errorUname = "";
                  }
                  String pass = _passController.text;
                  if (pass == null || pass.isEmpty) {
                    errorPass = "Rellena el campo correctamente";
                    correcto = false;
                  } else if (pass.length > 8 &&
                      RegExp(r'.*[^\w\s].*').hasMatch(pass)) {
                    errorPass = "";
                  } else {
                    errorPass =
                        "La contraseña debe tener caracteres especiales y mas de 8 caracteres";
                    correcto = false;
                  }

                  String confirmarPass = _confirmPassController.text;
                  if (confirmarPass == null || confirmarPass.isEmpty) {
                    errorConfirm = "Rellena el campo correctamente";
                    correcto = false;
                  } else if (confirmarPass == _passController.text) {
                    errorConfirm = "";
                  } else {
                    errorConfirm = "Las contraseñas no coinciden";
                    correcto = false;
                  }

                  if (correcto) {
                    List<String> data =
                        List.of([nombre, correo, pass, valorDropDown]);
                    Navigator.pushNamed(context, "/res", arguments: data);
                  } else {
                    setState(() {
                      errorConfirm = errorConfirm;
                      errorEmail = errorEmail;
                      errorPass = errorPass;
                      errorUname = errorUname;
                    });
                  }
                },
                child: Text("Enviar"))
          ],
        ),
      ),
    );
  }
}
