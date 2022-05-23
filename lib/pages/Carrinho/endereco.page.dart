
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/novoEndereco.page.dart';
import 'package:provider/provider.dart';

import '../../repository/Repository.control.dart';

class EnderecoPage extends StatefulWidget {
  const EnderecoPage({Key? key}) : super(key: key);

  @override
  State<EnderecoPage> createState() => _EnderecoPageState();
}

class _EnderecoPageState extends State<EnderecoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Endereço",
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
            child: Consumer<Repository>(
                builder: (context, value, child) {
                  return value.listaEndereco.isEmpty ? Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Lista vazia",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ) :
                  ListView.builder(
                    padding: EdgeInsets.all(20),
                    itemCount: value.listaEndereco.length,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Endereço: ", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Rua: " + value.listaEndereco[index].rua!),
                            Text("Bairro: " + value.listaEndereco[index].bairro!),
                            Row(
                              children: [
                                Text("Cidade: " + value.listaEndereco[index].cidade!),
                                SizedBox(width: 10,),
                                Text("Estado: " + value.listaEndereco[index].estado!),
                              ],
                            ),
                          ],
                        ),

                      ),
                    )
                  );
                }),
          ),

          //Expanded(child: Container()),
          //Botão adiciona novo endereço

                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurpleAccent,
                  child: TextButton(
                    child: Text(
                      "Novo endereço",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push<int>(MaterialPageRoute(
                        builder: (_) => NovoEnderecoPage(),
                      ),);
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
