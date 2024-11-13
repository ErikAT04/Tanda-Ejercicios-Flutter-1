import 'package:ej31/FormApp.dart';
import 'package:ej31/FormResults.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => FormApp(),
      "/res": (context) => FormResults()
    });
  }
}
