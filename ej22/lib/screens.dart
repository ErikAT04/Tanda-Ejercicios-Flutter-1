import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menú principal"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){Navigator.pushNamed(context, "/perfil");}, child: Text("Ir a Perfil")),
            TextButton(onPressed: (){Navigator.pushNamed(context, "/ajustes");}, child: Text("Ir a Ajustes")),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){Navigator.pushNamed(context, "/");}, child: Text("Ir al menú principal")),
            TextButton(onPressed: (){Navigator.pushNamed(context, "/ajustes");}, child: Text("Ir a Ajustes")),
          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajustes"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){Navigator.pushNamed(context, "/perfil");}, child: Text("Ir a Perfil")),
            TextButton(onPressed: (){Navigator.pushNamed(context, "/");}, child: Text("Ir al Menú Principal")),
          ],
        ),
      ),
    );
  }
}