import 'package:ej24/mainScreen.dart';
import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginApp> {
  var tController1 = TextEditingController();
  String errorTXT1 = "";
  String errorTXT2 = "";
  var tController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: tController1,
          decoration: InputDecoration(hintText: "Escribe un nombre", errorText: (errorTXT1.isEmpty ? "":errorTXT1))),
          TextField(controller: tController2, decoration: InputDecoration(hintText: "Escribe la contraseña", errorText: (errorTXT2.isEmpty ? "":errorTXT2)), obscureText: true,),
          TextButton(onPressed: (){
            bool b = true;
            errorTXT1 = "";
            errorTXT2 = "";
            if(tController1.text.isEmpty){
              errorTXT1 = "Escribe un nombre";
              b = false;
            }
            if(tController2.text.isEmpty){
              errorTXT2 = "Escribe una contraseña";
              b = false;
            }
            if(b){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(data: tController1.text)));
            }
          }, child: Text("Enviar"))
        ],
      ),
    );
  }

}