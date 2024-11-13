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
        body: Stack(
          children: [
            Positioned(
              left: 20,
              top: 20,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/5556/5556499.png"),
              ),
            ),
            Positioned(
                top: 80,
                left: 80,
                child: ElevatedButton(onPressed: () {}, child: Icon(Icons.add)))
          ],
        ),
      ),
    );
  }
}
