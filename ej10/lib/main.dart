import 'package:ej10/contenedores.dart';
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
            body: ListView(
              padding: EdgeInsets.all(10),
      children: const [
        CasillaLista(
          producto: "Secadora",
          precio: "20.50€",
          margin: 0,
          padding: 0,
          urlImg: "https://www.remingtonlatam.com/ar/wp-content/uploads/sites/28/2019/12/AC9096-Secador-Remington-Silk-Infundido-en-Ceramica-con-Seda-03.jpg",
          boxColor: Colors.lightBlue,
          shadowColor: Colors.black,
          offsetX: 2,
          offsetY: 2,
          blurRadius: 10,
        ),
        CasillaLista(
          producto: "Secadora",
          precio: "20.30€",
          margin: 0,
          padding: 0,
          urlImg: "https://www.remingtonlatam.com/ar/wp-content/uploads/sites/28/2019/12/AC9096-Secador-Remington-Silk-Infundido-en-Ceramica-con-Seda-03.jpg",
          boxColor: Colors.red,
          shadowColor: Colors.yellow,
          offsetX: 2,
          offsetY: 2,
          blurRadius: 10,
        ),
                CasillaLista(
          producto: "Secadora",
          precio: "20.30€",
          margin: 0,
          padding: 0,
          urlImg: "https://www.remingtonlatam.com/ar/wp-content/uploads/sites/28/2019/12/AC9096-Secador-Remington-Silk-Infundido-en-Ceramica-con-Seda-03.jpg",
          boxColor: Colors.blue,
          shadowColor: Colors.red,
          offsetX: 2,
          offsetY: 2,
          blurRadius: 10,
        ),
      ],
    )));
  }
}
