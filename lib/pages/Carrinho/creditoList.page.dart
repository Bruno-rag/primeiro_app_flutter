
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/credito.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/drscricaoCredito.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/novoEndereco.page.dart';
import 'package:provider/provider.dart';

import '../../repository/Repository.control.dart';
import 'descricaoEndereco.page.dart';

class CreditoListPage extends StatefulWidget {
  const CreditoListPage({Key? key}) : super(key: key);

  @override
  State<CreditoListPage> createState() => _CreditoListPageState();
}

class _CreditoListPageState extends State<CreditoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cartão",
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
                  return value.listCartao.isEmpty ? Column(
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
                      itemCount: value.listCartao.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Cartão: ", style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("Nome do titular: " + value.listCartao[index].nomeTitu),
                              Row(
                                children: [
                                  Text("validade: " + value.listCartao[index].validade),
                                  SizedBox(width: 10,),
                                  Text("Número do CVV: " + value.listCartao[index].cvv),
                                ],
                              ),
                              Text("Número do cartão: " + value.listCartao[index].numCartao),

                            ],
                          ),
                          onTap: (){
                            Navigator.of(context).push<int>(MaterialPageRoute(
                              builder: (_) => DescricaoCreditoPage(cartao: value.listCartao[index]),
                            ),);
                          },
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
                "Adicionar novo cartão",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push<int>(MaterialPageRoute(
                  builder: (_) => CreditoPage(),
                ),);
              },
            ),
          ),
        ],
      ),
    );
  }
}
