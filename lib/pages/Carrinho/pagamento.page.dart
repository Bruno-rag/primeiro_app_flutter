import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/cartao.page.dart';
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
          //Cartão de credito
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                        Icons.credit_card,
                        size: 30,
                        color: Colors.black
                    ),
                    Text(
                      "Cartão de Crédito",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.of(context).push<int>(
                    MaterialPageRoute(
                      builder: (_)=> CartaoPage(),
                    ),
                  );
                },
              ),
            ),
          ),
          //pix
          Container(
            height: 40,
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                        Icons.pix,
                        size: 30,
                        color: Colors.black
                    ),
                    Text(
                      "Pix",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black
                    ),
                  ],
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
