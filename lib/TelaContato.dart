import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Contato"),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Row(
                  children: <Widget> [
                    Image.asset("img/detalhe_contato.png"),
                    Text("Contatos",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold ),)
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      "atendimento@atmconsultoria.com.br"
                    )
                ),

                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                        "Telefone: (00) 0000-0000"
                    )
                ),

                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                        "Celular: (00) 90000-0000"
                    )
                ),

              ],
            ),
          ),
        )
    );
  }
}
