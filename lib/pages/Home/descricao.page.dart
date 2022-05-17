import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/modelo/Hamburger.model.dart';

class DescricaoPage extends StatefulWidget {
  final Burger burger;
  const DescricaoPage({
    Key? key,
    required this.burger,
  }) : super(key: key);

  @override
  State<DescricaoPage> createState() => _DescricaoPageState();
}

class _DescricaoPageState extends State<DescricaoPage> {
  @override
  Widget build(BuildContext context) {
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
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.network(widget.burger.urlAvatar),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36)
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.burger.nome,
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "R\$"+widget.burger.preco.toStringAsFixed(2),
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.normal,
                color: Colors.deepPurpleAccent
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurpleAccent,
              child: TextButton(
                child: Text(
                  "Adicionar ao Carrinho",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
