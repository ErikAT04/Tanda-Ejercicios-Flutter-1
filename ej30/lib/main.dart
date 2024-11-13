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
  List<Tab> listaPestanas = List.of([
    const Tab(icon: Icon(Icons.home)),
    const Tab(icon: Icon(Icons.settings)),
    const Tab(icon: Icon(Icons.contacts))
  ]);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        /*home: Scaffold(
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
          */
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(tabs: listaPestanas),
                title: Text("Pestañas"),
              ),
              body: TabBarView(
                  children: [MainScreen(), SettingsScreen(), ProfileScreen()]),
            )));
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