import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class FormCard extends StatefulWidget {
  const FormCard({Key? key}) : super(key: key);
  @override
  _FormCardState createState() => _FormCardState();
}
//String username;
class _FormCardState extends State<FormCard> {
  TextEditingController controlleruser = new TextEditingController();
  TextEditingController controllerpassword = new TextEditingController();
  TextEditingController controlleredad = new TextEditingController();
  TextEditingController controllerdireccion = new TextEditingController();
  TextEditingController controllercorreo= new TextEditingController();

  String mensaje = 'Usuario o Contraseña Incorrecta';
  Future<List> registro() async{
    final response = await http.post("http://192.168.100.215/sneakerfever/registro.php", body: {
      "username": controllerUser.text,
      "password": controllerPass.text,
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Registrate a Sneaker Fever !')
        ),
        body: SingleChildScrollView(
    child: Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 130,
        ),
        const SizedBox(
          height: 20,
        ),
        _inputName(),
        SizedBox(
          height: 7,
        ),
        _inputEdad(),
        SizedBox(
          height: 7,
        ),
        _inputDirecion(),
        SizedBox(
          height: 7,
        ),
        _inputEmail(),
        SizedBox(
          height: 7,
        ),
        _inputContra(),
        SizedBox(
          height: 7,
        ),
        _inputCreditcard(),
        SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: _inputDate(),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,

                child: _inputCode()),
          ],
        ),
        Row(
          children: [
            Container(
              child: Expanded(
                  //margin: const EdgeInsets.all(15),
                  //width: MediaQuery.of(context).size.width - 30,
                  child: RaisedButton(
                      color: Colors.orange,
                      onPressed: () {}, child: Text("Registrarse", style: Theme.of(context).textTheme.titleLarge,)
                  ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              child: Expanded(
                child: RaisedButton(
                    color: Colors.orange,
                    onPressed: () {}, child: Text("Entrar",style: Theme.of(context).textTheme.titleLarge,)
                ),
              ),
            ),
          ],
        )
      ],
    ),
        ),
      );

  }

  Container _inputName() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "Nombre Completo", border: InputBorder.none),
        ));
  }

  Container _inputEdad() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration:
          const InputDecoration(hintText: "Edad", border: InputBorder.none),
        ));
  }

  Container _inputDirecion() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "Direcciòn Completa", border: InputBorder.none),
        ));
  }

  Container _inputEmail() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "Ingrese Correo Electronico", border: InputBorder.none),
        ));
  }

  Container _inputContra() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "Ingrese una contraseña", border: InputBorder.none),
        ));
  }

  Container _inputCreditcard() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "Ingrese el numero de su tarjeta",
              border: InputBorder.none),
        ));
  }

  Container _inputDate() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "01/24", border: InputBorder.none),
        ));
  }

  Container _inputCode() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration:
          const InputDecoration(hintText: "000", border: InputBorder.none),
        ));
  }
}