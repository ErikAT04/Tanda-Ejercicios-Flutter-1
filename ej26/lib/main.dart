import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => MainScreen(),
        "/color": (context) => ChangeColor()
      },
    );
  }
  

}


class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainState();
  }

}
class MainState extends State<MainScreen>{
  Color miColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: miColor,
              ),
              TextButton(onPressed: () async {
                var color = await Navigator.pushNamed(context, "/color");
                Color colorParse =  color! as Color;
                setState(() {
                  miColor = colorParse;
                });
              }, child: Text("Cambiar color"))
            ],
          )
        ),
      ),
    );
  }
}

class ChangeColor extends StatefulWidget{
  const ChangeColor({super.key});

  @override
  State<StatefulWidget> createState() {
    return ColorState();
  }
}

class ColorState extends State<ChangeColor> {
  Color chosenColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selector de colores"),),
      body: Center(
        child: Column(
          children: [
            ColorPicker(pickerColor: chosenColor, onColorChanged: (color){
              setState(() {
                chosenColor = color;
              });
            }),
            TextButton(onPressed: (){
              Navigator.pop(context, chosenColor);
            }, child: Text("Cambiar color"))
          ],
        ),
      )
    );
  }
}
