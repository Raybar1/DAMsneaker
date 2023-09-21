import 'package:flutter/material.dart';

class Vista extends StatelessWidget {
  const Vista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Jordan 1 Smoke Grey')
      ),
      body:Container(
        child: Column(
          children: [

            Image.asset('assets/images/sn1.png'),
            Text("A solo 4800",style: TextStyle(fontSize: 50,)
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Agregar al Carrito',
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
    );
  }
}
