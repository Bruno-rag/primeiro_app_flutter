
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/endereco.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/pagamento.page.dart';

class ComprarPage extends StatefulWidget {
  const ComprarPage({Key? key}) : super(key: key);

  @override
  State<ComprarPage> createState() => _ComprarPageState();
}

class _ComprarPageState extends State<ComprarPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Comprar"
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
          //Configuraçao de endereço e pagamento
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                //Endereço
                Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  child: SizedBox.expand(
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add_location,
                            size: 30,
                            color: Colors.black
                          ),
                          Text(
                            "Endereço",
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
                            builder: (_)=> EnderecoPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                //Forma de pagamento
                Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  child: SizedBox.expand(
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                              Icons.account_balance_wallet,
                              size: 30,
                              color: Colors.black
                          ),
                          Text(
                            "Forma de pagamento",
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
                            builder: (_)=> PagamentoPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Lista de itens
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15.0,
                            offset: Offset(0.0,0.75)

                        )
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Nome Do Hamburger",
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
          ),
          //barra inferior
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pagamento Total:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "R\$ 00.00",
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  height: MediaQuery.of(context).size.height,

                  child: TextButton(
                    child: Text(
                      "Finalizar compra",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
