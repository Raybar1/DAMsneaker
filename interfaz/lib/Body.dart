//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:Interfaz/Contenido.dart';
import 'package:Interfaz/Registro.dart';
import 'package:Interfaz/Vista.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Boton menu
          leading: IconButton(
            icon: const Icon(Icons.supervised_user_circle_sharp),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormCard()));
            },
          ),
          //Texto Bienvenida
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sneaker Fever online"
                //style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          ),
          //Boton Login
          actions: [
            IconButton(
                icon: const Icon(Icons.person_add_alt_1),
                color: Colors.black,
                onPressed: () {
                  //Pagina Registro
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormCard()));
                }
            ),

          ],
          //);
        ),
        body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 130,
              ),
          //entrada a la vista del producto
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Vista()));
            },
            child: Container(
              height: 180,
              width: 160,
              //padding: border,
              decoration: BoxDecoration (color:  Color(0xFF92B2C9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('assets/images/sn1.png'),
            ),
          ),
              Text('Jordan 1 Smoke Grey',
                style: TextStyle(color: Colors.black87),
          ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration (color:  Color(0xFFC588DB),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/sn2.png'),
              ),
              Text('Blazzer off white SW',
                style: TextStyle(color: Colors.black87),
              ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration (color:  Color(0xFFD25660),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/sn3.png'),
              ),
              Text('Air Yezzy 2',
                style: TextStyle(color: Colors.black87),
              ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration (color:  Color(0xFFF3E180),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/sn4.png'),
              ),
              Text('Jordan 1 New Love',
                style: TextStyle(color: Colors.black87),
              ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration (color:  Color(0xFF921E1E),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/sn6.png'),
              ),
              Text('Jordan 1 Gym Red',
                style: TextStyle(color: Colors.black87),
              ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration (color:  Color(0xFFE8CB50),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/sn5.png'),
              ),
              Text('Jordan 4 Thunder',
                style: Theme.of(context).textTheme.subtitle1,

              ),

          //Contenidopage(),
          ],
        ),
        ),
    );
  }
}




