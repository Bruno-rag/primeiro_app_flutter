import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/modelo/cartao.model.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/creditoList.page.dart';
import 'package:primeiro_app_flutter/repository/Repository.control.dart';
import 'package:provider/provider.dart';

class CreditoPage extends StatelessWidget {
  CreditoPage({Key? key}) : super(key: key);

  String nome = "";
  String numCartao= "";
  String numero = "";
  String validade = "";
  String cvv = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cartão de Crédito",
        ),
        //estilo do appbar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigoAccent, Colors.deepPurpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Column(
        children:[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Cartão",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: "Nome completo do titular",
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    onChanged: (texto){
                      nome = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: "Número do cartão",
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    onChanged: (texto){
                      numCartao = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Validade",
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    onChanged: (texto){
                      validade = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "CVV",
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    onChanged: (texto){
                      cvv = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          //Botão de confirmar
        Consumer<Repository>(
        builder: (context, value, child) {
          return Container(
            height: 45,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.deepPurple,
            child: TextButton(

              child: Text(
                "Concluir",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              onPressed: () {
              Navigator.of(context).pop();
              Cartao cartao = Cartao(nome,validade, numCartao,cvv);
              value.addCartao(cartao);
            },
            ),
          );
          }
        )
        ],
      ),
    );
  }
}
