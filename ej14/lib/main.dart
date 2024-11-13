import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Formulario"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if(value==null || value.isEmpty){
                        return "Error";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(hintText: "Nombre: "),
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value==null || !value.contains("@")){
                        return "Error";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(hintText: "Email: "),
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value==null || value.isEmpty){
                        return "Error";
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Contraseña: "),
                  )
                ],
              )
            ),
            ElevatedButton(onPressed: (){if(formKey.currentState!.validate()){print("Todo correcto");}}, child: Text("Comprobar"))
          ],
        ),
      ),
    );
  }
}
