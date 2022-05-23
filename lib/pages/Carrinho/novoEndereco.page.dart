import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/endereco.page.dart';
import 'package:provider/provider.dart';

import '../../modelo/endereco.model.dart';
import '../../repository/Repository.control.dart';

class NovoEnderecoPage extends StatefulWidget {
  const NovoEnderecoPage({Key? key}) : super(key: key);

  @override
  State<NovoEnderecoPage> createState() => _NovoEnderecoPageState();
}

class _NovoEnderecoPageState extends State<NovoEnderecoPage> {

  String rua = "";
  String bairro = "";
  String numero = "";
  String ref = "";
  String cep = "";
  String cidade = "";
  String estado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Endereço novo"
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
              child: ListView(

                children: [
                  Text(
                    "Cadastro de endereço",
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
                      labelText: "Rua",
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
                      rua = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: "Bairro",
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
                      bairro = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Número",
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
                      numero = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Ponto de referência",
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
                      ref = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "CEP",
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
                      cep = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Cidade",
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
                      cidade = texto;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Estado",
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
                      estado = texto;
                    },
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
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurple,
                  child: TextButton(
                    onPressed: (){
                      Endereco endereco = Endereco(rua: rua,bairro: bairro,numero: numero,ref: ref,cep: cep,cidade: cidade,estado: estado);

                      value.addEndereco(endereco);

                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Concluir",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                );
              }
            ),
        ],
      ),
    );
  }
}
