import 'package:flutter/material.dart';
import 'package:Interfaz/Body.dart';
import 'package:Interfaz/Registro.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Sneaker Fever',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Body(), //const MyHomePage(title: 'Sneaker Fever'),
    );
  }
}

