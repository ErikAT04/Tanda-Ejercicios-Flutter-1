import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainState();
  }
}

class MainState extends State<MainApp> {
  List<BottomNavigationBarItem> listaBotones = List.of([
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), label: "Menú principal"),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Ajustes"),
    const BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Perfil")
  ]);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: listaBotones,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          ),
          body: switch (currentIndex) {
            0 => MainScreen(),
            1 => SettingsScreen(),
            _ => ProfileScreen()
          }),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Pantalla principal"),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Pantalla de Perfil"),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Pantalla de Ajustes"),
    );
  }
}
