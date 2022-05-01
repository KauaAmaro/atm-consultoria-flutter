import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({Key? key}) : super(key: key);

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Clientes"),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Row(
                  children: <Widget> [
                    Image.asset("img/detalhe_cliente.png"),
                    Text("Cliente",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold ),)
                  ],
                ),
                Image.asset("img/cliente1.png"),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child:
                    Text(
                        "Empresa de Software"
                    )
                ),

                Image.asset("img/cliente2.png"),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child:
                    Text(
                        "Empresa de auditoria"
                    )
                )

              ],
            ),
          ),
        )
    );
  }
}
