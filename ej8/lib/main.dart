import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return StateMain();
  }
}

class StateMain extends State<MainApp> {
  int incremento = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.all(10),
              child: Padding(padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 101, 70, 221),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(3, 3),
                          blurRadius: 10)
                    ],
                  ),
                  child: const Column(
                    children: [
                      Text("Título",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text("Subtítulo",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255))),
                      Image(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREkneP0V3vE1RH-Pe77XsIEzgpLZWOrG_hIg&s"))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.red, offset: Offset(3, 3), blurRadius: 10)
                  ],
                ),
                padding: EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Text("Prueba extra",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text("Este modelo de prueba es distinto al de arriba",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
