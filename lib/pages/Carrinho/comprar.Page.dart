
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/endereco.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/pagamento.page.dart';
import 'package:primeiro_app_flutter/modelo/item.model.dart';

class ComprarPage extends StatefulWidget {
  final List<Item>? item;
  final double? valor;
  const ComprarPage({Key? key, this.item, this.valor}) : super(key: key);

  @override
  State<ComprarPage> createState() => _ComprarPageState();
}

class _ComprarPageState extends State<ComprarPage> {

  List<Item> itens= [];

  void initState() {
    super.initState();
    itens.insertAll(0,widget.item!);
  }

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
            child: ListView.builder(
              itemCount: itens.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(itens[index].urlAvatar),
                  ),
                  title: Text(itens[index].nome),
                  subtitle: Text("R\$ "+itens[index].preco.toStringAsFixed(2)),

                ),
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
                      "R\$ " + widget.valor!.toStringAsFixed(2),
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
