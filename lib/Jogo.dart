import 'dart:math';
import 'package:flutter/material.dart';
class Jogo extends StatefulWidget {

  @override
  State<Jogo> createState() => JogoState();
}

class JogoState extends State<Jogo> {

  var _imgApp=AssetImage("images/padrao.png");
  var _mensagem ="Escolha uma opção abaixo :)";

 void _opcaoSelecionada(String escolhaUsuario) {

   var opcoes = ["pedra", "papel", "tesoura"];
   var numero = Random().nextInt(3);
   var escolhaApp = opcoes[numero];

   print ("Escolha do App :" + escolhaApp);
   print("Escolha do Usuario:"+escolhaUsuario);

//exibiçao APP

 switch(escolhaApp){
   case "pedra":
     setState(() {
       this._imgApp=AssetImage("images/pedra.png");
     });
     break;

     case "papel":
     setState(() {
       this._imgApp=AssetImage("images/papel.png");
     });
       break;

   case "tesoura":
     this._imgApp=AssetImage("images/tesoura.png");
     break;
 }
   //validaçao do Ganhador

   //Usuario Ganhador
   if(
   (escolhaUsuario ==" pedra" && escolhaApp =="tesoura") ||
   (escolhaUsuario == " tesoura" && escolhaApp =="papel")||
   (escolhaUsuario=="papel" && escolhaApp =="pedra"))
   {
     setState(() {
       this._mensagem="Parabéns!!! Você Ganhou :)";
     });

     //App Ganhador
   }else if(
      (escolhaApp =="pedra" && escolhaUsuario =="tesoura") ||
          (escolhaApp == "tesoura " && escolhaUsuario =="papel") ||
       (escolhaApp == "papel "&& escolhaUsuario == "pedra")
   ){
     this._mensagem="Que pena Você perdeu :(";

    //Empate
   }else{
           this._mensagem="Empatamos ;)";
   }

  }

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

Image(image: this._imgApp,),
    Padding(
      padding: EdgeInsets.only(top:32,bottom: 16 ),
      child:Text(
        this._mensagem,
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
              GestureDetector(
                onTap:()=> _opcaoSelecionada("pedra"),
                child: Image.asset("images/pedra.png",height: 100),
              ),
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("papel"),
                child: Image.asset("images/papel.png",height: 100),
              ),
              GestureDetector(
                onTap:()=> _opcaoSelecionada("tesoura"),
                child:  Image.asset("images/tesoura.png",height: 100),
              )

            ],
          ),
        ],
    ) ,
    );
  }
}
