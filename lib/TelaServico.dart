import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({Key? key}) : super(key: key);

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Serviçoes"),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Row(
                  children: <Widget> [
                    Image.asset("img/detalhe_servico.png"),
                    Text("Nossos Serviços",
                      style: TextStyle( color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold ),)
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                        "Consultoria"
                    )
                ),

                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                        "Cálculo de preços"
                    )
                ),

                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                        "Acompanhamentos de serviços"
                    )
                ),

              ],
            ),
          ),
        )
    );
  }
}
