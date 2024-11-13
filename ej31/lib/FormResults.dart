import 'package:flutter/material.dart';

class FormResults extends StatelessWidget {
  const FormResults({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> data =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Contenido conseguido: ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Correo electrónico: ${data[0]}"),
          Text("Usuario: ${data[1]}"),
          Text("Contraseña: ${data[2]}"),
          Text("Acepta los términos: ${data[3]}")
        ],
      )),
    );
  }
}
