import 'package:atm_consultoria_flutter/TelaCliente.dart';
import 'package:atm_consultoria_flutter/TelaContato.dart';
import 'package:atm_consultoria_flutter/TelaEmpresa.dart';
import 'package:atm_consultoria_flutter/TelaServico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  TelaEmpresa()
        ),
    );

  }

  void _abrirContato(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  TelaContato()
      ),
    );
  }

  void _abrirServico(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  TelaServico()
      ),
    );
  }

  void _abrirCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  TelaCliente()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM CONSULTORIA",
        style: TextStyle( color: Colors.white,
            fontWeight: FontWeight.bold ),
        ),
        backgroundColor: Colors.green,
      ),

      body: Container(
        padding: EdgeInsets.all(16),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget> [
         Image.asset("img/logo.png"),
       Padding(padding: EdgeInsets.only(top: 32),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children:  <Widget> [
             GestureDetector(
               onTap: _abrirEmpresa,
               child: Image.asset("img/menu_empresa.png"),
             ),
             GestureDetector(
               onTap: _abrirServico,
               child: Image.asset("img/menu_servico.png"),
             ),
           ]

         ),

       ),

            Padding(padding: EdgeInsets.only(top: 32),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  <Widget> [
                    GestureDetector(
                      onTap: _abrirCliente,
                      child: Image.asset("img/menu_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirContato,
                      child: Image.asset("img/menu_contato.png"),
                    ),
                  ]

              ),

            ),


       ] ,
     ),
      ),
    );
  }
}
