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
  ThemeData themeData = ThemeData.light();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: const MenuPrincipal(),
    );
  }

  void actualizarTema(bool isDarkMode) {
    setState(() {
      themeData = (isDarkMode) ? ThemeData.dark() : ThemeData.light();
    });
  }
}

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<StatefulWidget> createState() {
    return MenuPrincipalState();
  }
}

class MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menú principal")),
      body: Center(
        child: TextButton(
          child: const Text("Ir a Ajustes"),
          onPressed: () async {
            final bool isDarkMode = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsWindow(),
              ),
            );
            setState(() {
              (context.findAncestorStateOfType<MainAppState>() as MainAppState)
                  .actualizarTema(isDarkMode);
            });
          },
        ),
      ),
    );
  }
}

class SettingsWindow extends StatefulWidget {
  const SettingsWindow({super.key});

  @override
  State<StatefulWidget> createState() {
    return SettingsState();
  }
}

class SettingsState extends State<SettingsWindow> {
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ajustes")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: switchState,
              onChanged: (value) {
                setState(() {
                  switchState = value;
                });
              },
            ),
            TextButton(
              onPressed: () {
                // Regresa el estado del switch al menú principal.
                Navigator.pop(context, switchState);
              },
              child: const Text("Volver al menú principal"),
            ),
          ],
        ),
      ),
    );
  }
}
