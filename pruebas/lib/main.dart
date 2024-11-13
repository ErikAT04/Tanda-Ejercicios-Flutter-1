import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => PantallaA(),
        "/b": (context) => PantallaB(),
      },
    );
  }
}

class PantallaA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EstadoA();
  } 
}
class EstadoA extends State<PantallaA>{
  String titulo = "Pantalla A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Center(
        child: FloatingActionButton(
          child: Text("Ir a B"),
          onPressed: () async {
            var txt = await Navigator.pushNamed(context, "/b");
            setState(() {titulo = txt.toString();});
        }),
      ),
    );
  }
}
class PantallaB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla B"),
      ),
      body: Center(
        child: FloatingActionButton(
          child: Text("Ir a A"),
          onPressed: (){
            Navigator.pop(context, "Pantalla A - Cambiada");
        }
        ))
    );
  }
}