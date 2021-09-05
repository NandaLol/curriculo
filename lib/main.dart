import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(

    )
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currículo"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      backgroundColor: Colors.white,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Icon(Icons.android, size: 120.0, color : Colors.deepPurpleAccent),
          Text("Maria Fernanda Alcântara Bento", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19.0)),
          Text("    Data de Nascimento: 01/05/2000", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    Endereço: Rua Caetes n.º170", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    Telefone: 34 999526639", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("Formaçao Acadêmica", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19.0)),
          Text("    Cursando Sistemas de Informação 4º Período", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("Linguagens Aprendidas", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19.0)),
          Text("    -HTML", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    -CSS", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    -C++", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    -Python", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("Soft Skills", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19.0)),
          Text("    -Foco", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    -Flexibilidade e adaptabilidade", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    -Sociabilidade", style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text("    -Trabalho em equipe", style: TextStyle(color: Colors.black, fontSize: 15.0)),

        ],
      ),
    );
  }
}
