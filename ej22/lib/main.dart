import 'dart:ui';
import 'screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/ajustes": (context) => SettingsPage(),
        "/perfil": (context) => ProfilePage(),
      },
    );
  }
}
