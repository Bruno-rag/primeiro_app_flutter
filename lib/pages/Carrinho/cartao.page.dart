import 'package:flutter/material.dart';

class CartaoPage extends StatefulWidget {
  const CartaoPage({Key? key}) : super(key: key);

  @override
  State<CartaoPage> createState() => _CartaoPageState();
}

class _CartaoPageState extends State<CartaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cartão de Crédito",
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
    );
  }
}
