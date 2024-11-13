import 'package:flutter/material.dart';


/*Crea una aplicación simple que muestre un mensaje de bienvenida en la 
consola en cada etapa del ciclo de vida de un widget (initState(), build(), 
dispose())*/

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  void initState(){
    print("Ejecutado initState");
  }

  @override 
  void dispose(){
    print("Dispose ejecutado");
  }
  
  @override
  State<StatefulWidget> createState() {
    return _stateExample();
  }
}

class _stateExample extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    print("Hola");
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    print("Iniciando");
  }
  @override
  void dispose() {
    // ignore: avoid_print
    print("Adios");
    super.dispose();
  }
}
