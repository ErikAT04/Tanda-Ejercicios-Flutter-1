import 'package:flutter/material.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() {
    return MainState();
  }
}

class MainState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title",
      home: Scaffold(
        body: Container(
          height: 300,
        child: Stack(
          children: [
            Positioned.fill(child: Image(image: NetworkImage("https://www.fodors.com/wp-content/uploads/2021/05/UltimatePlayaDelCarmen__HERO_shutterstock_1161420211.jpg"), fit: BoxFit.cover,)),
            const Positioned(
              left: 100,
              top: 20,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/5556/5556499.png"),
              ),
            ),
            Positioned(
                top: 80,
                left: 150,
                child: ElevatedButton(onPressed: () {}, child: Icon(Icons.add)))
          ],
        ),
      ),
      )
    );
  }
}
