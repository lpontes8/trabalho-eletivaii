import 'package:flutter/material.dart';
import 'package:trabalhoeletivaii/screens/home_screen.dart';
import 'package:trabalhoeletivaii/screens/eventos/perfil_evento.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyIngressos",
      home: new HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
