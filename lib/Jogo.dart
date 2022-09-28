import 'package:flutter/material.dart';
class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => JogoState();
}

class JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("JOKEN PO",selectionColor: Colors.lightBlue),
      ),
body:Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Padding(
      padding: EdgeInsets.only(top:35,bottom: 10),
      child: Text(
        "Escolha do App:",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize:30 ,
          fontWeight:FontWeight.bold ,
                  ),

      ),
    ),
    Image.asset("images/padrao.png",height: 200),
    Padding(
      padding: EdgeInsets.only(top:32,bottom: 16 ),
      child:Text(
        "Escolha uma opção abaixo :)",
        textAlign:TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight:FontWeight.bold,
                  ),
      )
          ),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset("images/pedra.png",height: 100),
              Image.asset("images/papel.png",height: 100),
              Image.asset("images/tesoura.png",height: 100)

            ],
          ),
        ],
    ) ,
    );
  }
}
