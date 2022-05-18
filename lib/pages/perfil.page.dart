
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/endereco.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/pagamento.page.dart';
import 'package:primeiro_app_flutter/pages/historico.page.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) => Container(
    child: Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20,left: 10,right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage("https://media.istockphoto.com/photos/thug-life-meme-glasses-pixel-art-modern-iconic-3d-object-picture-id1310981636?b=1&k=20&m=1310981636&s=170667a&w=0&h=GjiqcTE4iPguJP0m8xKdq4Hq2kcstcGJVVk8mRPv4qg="),
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.deepPurpleAccent,
              radius: 120,

            ),
            SizedBox(
                height: 5),
            Text(
              "NomeUsuario",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
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
                  SizedBox(
                    height: 8,
                  ),
                  //Hitórico de compra
                  Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: SizedBox.expand(
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                                Icons.history,
                                size: 30,
                                color: Colors.black
                            ),
                            Text(
                              "Histórico de pedidos",
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
                              builder: (_)=> HistoricoPage(),
                            ),
                          );
                        },
                      ),
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
