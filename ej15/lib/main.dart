import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}

class MainState extends State<MainApp> {
  String st = "Usuario";
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(children: [
            Stack(
              children: [
                Positioned(
                    child: Image(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/gensin-impact/images/c/cf/Namecard_Background_Kinich_Ajaw.png/revision/latest/scale-to-width/360?cb=20240917101329"))),
                const Positioned(
                  left: 20,
                  top: 20,
                  child: CircleAvatar(
                      radius: 65,
                      backgroundImage: NetworkImage(
                          "https://preview.redd.it/2vuy31jb9rpd1.jpeg?auto=webp&s=0764114f293e4831c6535338c2128449a2c29377")),
                ),
                Positioned(
                  child: Text(st,
                      style: TextStyle(
                          fontSize: 40, backgroundColor: Colors.white)),
                  left: 180,
                  top: 55,
                )
              ],
            ),
            TextField(
              controller: textController,
              decoration: InputDecoration(hintText: "Nombre"),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  st = textController.text;
                });
              },
              child: Text("Cambiar nombre"),
            )
          ]),
        ),
      ),
    );
  }
}

/*
Form(
          child: Stack(
            children: [
              const Positioned]hild: Image
                  (
                      image: NetworkImage(
                          "https://static.wikia.nocookie.net/gensin-impact/images/c/cf/Namecard_Background_Kinich_Ajaw.png/revision/latest/scale-to-width/360?cb=20240917101329"))),
              const Positioned(
                left: 20,
                top: 20,
                child: CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(
                        "https://preview.redd.it/2vuy31jb9rpd1.jpeg?auto=webp&s=0764114f293e4831c6535338c2128449a2c29377")),
              ),
              Positioned(
                child: Text(st,
                    style:
                        TextStyle(fontSize: 40, backgroundColor: Colors.white)),
                left: 180,
                top: 55,
              )
            ],
          ),
*/
