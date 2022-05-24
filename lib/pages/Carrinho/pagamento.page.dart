import 'package:flutter/material.dart';

import 'package:primeiro_app_flutter/pages/Carrinho/creditoList.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/pix.page.dart';

class PagamentoPage extends StatefulWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  State<PagamentoPage> createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pagamento",
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
          SizedBox(
            height: 10,
          ),
          //Credito
          Container(
            height: 40,
            width: 100,
            color: Colors.deepPurpleAccent,
            child: SizedBox.expand(
              child: TextButton(
                child: Text(
                  "Crédito",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push<int>(
                    MaterialPageRoute(
                      builder: (_)=> CreditoListPage(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Débito
          Container(
            height: 40,
            width: 100,
            color: Colors.deepPurpleAccent,
            child: SizedBox.expand(
              child: TextButton(
                child: Text(
                      "Pix",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                onPressed: () {
                  Navigator.of(context).push<int>(
                    MaterialPageRoute(
                      builder: (_)=> PixPage(),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(),),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurpleAccent,
            child: TextButton(
              child: Text(
                "Continuar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_)=> PagamentoPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
