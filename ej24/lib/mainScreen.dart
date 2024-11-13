import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  final String data;
  const MainScreen({required this.data});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Bienvenido, $data"),
      ),
    );
  }}