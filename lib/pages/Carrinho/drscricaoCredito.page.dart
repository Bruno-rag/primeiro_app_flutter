import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../modelo/cartao.model.dart';
import '../../repository/Repository.control.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/comprar.Page.dart';

class DescricaoCreditoPage extends StatefulWidget {
  final Cartao? cartao;
  const DescricaoCreditoPage({Key? key,this.cartao}) : super(key: key);

  @override
  State<DescricaoCreditoPage> createState() => _DescricaoCreditoPageState();
}

class _DescricaoCreditoPageState extends State<DescricaoCreditoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Descrição do cartão",
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cartão",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 5,),
                
                Text("Nome do titular: " + widget.cartao!.nomeTitu),
                Text("validade: " + widget.cartao!.validade),

                Text("Número do CVV: " + widget.cartao!.cvv),
                Text("Número do cartão: " + widget.cartao!.numCartao),
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
                      "Selecionar Cartão",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      /*Navigator.of(context).pop();
                      Navigator.of(context).push<int>(MaterialPageRoute(
                        builder: (_) =>
                            ComprarPage(cartao: widget.cartao!),
                      ),);*/
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
