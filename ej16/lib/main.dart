import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}

class MainState extends State<MainApp> {
  bool terminado = false;
  late http.Response response;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    var url = Uri(host: "jsonplaceholder.typicode.com", path: "posts", scheme: "https");
    print(url.toString());
      http.get(url).then((data){setState(() {
        response = data;
      });});

    List<dynamic> respuestaJson =
        jsonDecode(response.body);

    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: respuestaJson.length,
              itemBuilder: (context, count) {
                var tileInfo = respuestaJson[count] as Map<String, dynamic>;
                return ListTile(
                  leading: Text(tileInfo["id"].toString()),
                  title: Text(tileInfo["title"]),
                  subtitle: Text(tileInfo["body"]),
                );
              }
            )
        ),
      ),
    );
  }
}
