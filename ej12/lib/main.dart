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
          child: GridView.count(crossAxisCount: 2, 
          children: List.generate(9, (index){
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/aaaaa.jpg"), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            );
          }),
        )),
      ),
    )
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
