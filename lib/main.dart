import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
   Future<void> _launchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o link $url');
    }

  }
  
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("Currículo"),
        centerTitle: true,
        backgroundColor: Color(0xff5E3AC2),
      ),
      backgroundColor: Color(0xff5E3AC2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: ClipOval(
                  child: Image.asset(
                'assets/foto.png',
              )),
              height: 300,
              color: Color(0xff7C4CFF),
            ),
            SizedBox(
              height: 10,
            ),
            Text(" Maria Fernanda Alcântara Bento",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0)),
            SizedBox(
              height: 4,
            ),
            Text("      Data de Nascimento: 01/05/2000",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("      Endereço: Rua Caetes n.º170",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("      Telefone: 34 999526639",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("      Email: mariafernanda212@hotmail.com",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 10,
            ),
            Text(" Formaçao Acadêmica",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     Cursando Sistemas de Informação 4º Período",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 10,
            ),
            Text(" Linguagens Aprendidas",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -HTML",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -CSS",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -C",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -Python",
                style: TextStyle(color: Colors.white, fontSize: 15.0)),
            SizedBox(
              height: 10,
            ),
            Text(" Soft Skills",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -Foco",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -Flexibilidade e adaptabilidade",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -Sociabilidade",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Text("     -Trabalho em equipe",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: 'Roboto')),
            SizedBox(
              height: 4,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    icon: Icon(Icons.link),
                    label: Text('GitHub'),
                    onPressed:() => _launchLink('https://github.com/NandaLol'),
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.link),
                    label: Text('LinkedIn'),
                    onPressed: () => _launchLink('https://www.linkedin.com/in/maria-fernanda-a652321a2/'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    return scaffold;
  }
}
