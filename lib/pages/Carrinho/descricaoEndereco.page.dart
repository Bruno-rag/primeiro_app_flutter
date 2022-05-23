import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/modelo/endereco.model.dart';
import 'package:provider/provider.dart';

import '../../repository/Repository.control.dart';

class DescricaoEnderecoPage extends StatefulWidget {
  final Endereco? endereco;
  const DescricaoEnderecoPage({Key? key,this.endereco}) : super(key: key);

  @override
  State<DescricaoEnderecoPage> createState() => _DescricaoEnderecoPageState();
}

class _DescricaoEnderecoPageState extends State<DescricaoEnderecoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Descrição do endereço",
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
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Text(
                   "Endereço",
                   style: TextStyle(
                     fontSize: 25,
                   ),
                 ),
                Text("Cidade: " + widget.endereco!.cidade!),
                Text("Estado: " + widget.endereco!.estado!),
                Text("Rua: " + widget.endereco!.rua!),
                Text("CEP: " + widget.endereco!.cep!),
                Text("Ref.: " + widget.endereco!.ref!),
                Text("Número: " + widget.endereco!.numero!),
              ],
            ),
          ),
          Consumer<Repository>(
            builder: (context, value, child) {
              return Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurpleAccent,
                child: TextButton(
                  child: Text(
                    "Selecionar endereço",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    value.pedidotemp.endereco;

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
