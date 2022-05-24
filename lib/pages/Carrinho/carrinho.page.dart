

import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/comprar.Page.dart';
import 'package:primeiro_app_flutter/repository/Repository.control.dart';
import 'package:provider/provider.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({Key? key,}) : super(key: key,);
  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}
class _CarrinhoPageState extends State<CarrinhoPage> {
  @override
  Widget build(BuildContext context){
    return Container(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Lista ",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Lista de item
          Expanded(
            child: Consumer<Repository>(
              builder: (context, value, child) {
                return value.listaItem.isEmpty ? Column(
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
                )
                :ListView.builder(
                  padding: EdgeInsets.all(20),
                  itemCount: value.listaItem.length,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(value.listaItem[index].urlAvatar),
                      ),
                      title: Text(value.listaItem[index].nome),
                      subtitle: Text("R\$ "+value.listaItem[index].preco.toStringAsFixed(2)),
                      trailing:  IconButton(
                        onPressed: () {
                            setState(() {
                              value.itemRemove(index);
                            });

                        },
                        icon: Icon(Icons.delete)
                      ),
                      onTap: (){
                      },
                    ),
                  )
                );
              }),
          ),

          // Barra inferior carrinho
          Consumer<Repository>(
            builder: (context, value, child){
              return  Container(
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
                          "R\$ "+ value.valorTotal().toStringAsFixed(2),
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
                  ],
                ),
              );
            },
          ),
          Consumer<Repository>(
            builder: (context, value, child) {
              return Container(
                height: 45,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
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
                      builder: (_) =>
                          ComprarPage(
                              item: value.listaItem, valor: value.valorTotal()),
                    ),);
                  },
                ),
              );
            }
          )
        ],
      ),
    ),
  );}

}