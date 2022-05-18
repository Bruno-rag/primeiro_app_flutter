
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/comprar.Page.dart';
import 'package:primeiro_app_flutter/modelo/item.model.dart';
import 'package:primeiro_app_flutter/Control/item.control.dart';

class CarrinhoPage extends StatefulWidget {
  final Item? itens;
  const CarrinhoPage({Key? key, this.itens}) : super(key: key,);
  static final tag = 'carPage';
  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {

  List<Item> itens = [
    const Item(nome: "X-tudo",
    preco: 14.00,
    urlAvatar: "https://c.pxhere.com/photos/13/fa/beef_bread_bun_burger_cheese_cheeseburger_close_up_delicious-1556149.jpg!d"
    ),
    const Item(nome: "Duplo bacon",
    preco: 16.00,
    urlAvatar: "https://c.pxhere.com/photos/13/fa/beef_bread_bun_burger_cheese_cheeseburger_close_up_delicious-1556149.jpg!d"
    ),
  ];



  @override
  Widget build(BuildContext context) => Container(
    child: Scaffold(
      appBar: AppBar(

        title: Text(
            "Carrinho de compras"
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //Lista de item
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
                    trailing:  IconButton(onPressed: () {
                      setState(() {
                        _removeItem(index);
                    }); }, icon: Icon(Icons.delete),),

                    onTap: (){
                    },
                  ),
                 ),
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
  void _removeItem(int index){
    itens.remove(itens[index]);
  }
}