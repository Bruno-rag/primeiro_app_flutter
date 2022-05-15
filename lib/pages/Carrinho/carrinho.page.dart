
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/comprar.Page.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({Key? key}) : super(key: key);

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  @override
  Widget build(BuildContext context) => Container(
    child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //Lista de item
            Expanded(
              child: ListView(
                children: [
                  //Item
                  Container(
                    height: 130,

                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 8.0,
                          offset: Offset(0.0,0.75)

                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [Colors.indigoAccent, Colors.deepPurple],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //image do humgurger
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),

                          image:  DecorationImage(
                            image: NetworkImage("https://c.pxhere.com/photos/13/fa/beef_bread_bun_burger_cheese_cheeseburger_close_up_delicious-1556149.jpg!d"),
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      // Informação do item
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Nome do\n acompanhamento",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Descrição do item",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "R\$ 99,99",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),
            // Barra inferior carrinho
            Container(
              height: 150,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              // Barra inferior carrinho
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // preço total
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Total
                      Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),

                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "R\$ 00,00",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Botão de comprar
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
                        Navigator.of(context).push<int>(MaterialPageRoute(
                            builder: (_) => ComprarPage(),
                        ),);},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}