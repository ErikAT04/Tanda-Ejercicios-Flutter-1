import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Container(
          width: 500,
          height: 500,
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
            Image(image: AssetImage("assets/aaaaa.jpg")),
            Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1296242195/es/vector/mano-agitada-dibujos-animados-moviendo-la-mano-humana-gesto-de-saludo-o-despedida-signo.jpg?s=612x612&w=0&k=20&c=2Sp3dfkXHelfYGaeKZwHg_SaeVZ6mTo0nRXYwcqQz2k="))
          ]),
        )),
      ),
    );
  }
}

class ImageContenedor extends StatelessWidget {
  const ImageContenedor({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
