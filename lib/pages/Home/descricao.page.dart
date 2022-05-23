import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/modelo/item.model.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/carrinho.page.dart';
import 'package:primeiro_app_flutter/repository/Repository.control.dart';
import 'package:provider/provider.dart';

class DescricaoPage extends StatefulWidget {
  final Item? burger;
  const DescricaoPage({
    Key? key, this.burger,

  }) : super(key: key);

  @override
  State<DescricaoPage> createState() => _DescricaoPageState();
}

class _DescricaoPageState extends State<DescricaoPage> {
  /*void _enviarAgr(){
    Navigator.pushReplacementNamed(context,
      CarrinhoPage.tag,
      arguments: widget.burger,
    );
  }*/

  late Repository itens;

  @override
  Widget build(BuildContext context) {
    itens = Provider.of<Repository>(context);
    return Scaffold(
      appBar: AppBar(

        title: Text(
            "Descrição"
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
        child: Column(
          children: [
            //imagem hamburger
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.network(widget.burger!.urlAvatar),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36)
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.burger!.nome,
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "R\$"+widget.burger!.preco.toStringAsFixed(2),
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.normal,
                color: Colors.deepPurpleAccent
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurpleAccent,
              child: TextButton(
                child: Text(
                  "Adicionar ao Carrinho",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  //_enviarAgr();
                  itens.itemAdd(widget.burger!);
                  Navigator.of(context).push<int>(MaterialPageRoute(
                    builder: (_) => CarrinhoPage(),

                  ),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
