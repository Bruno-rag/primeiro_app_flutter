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
            SizedBox(
              width: MediaQuery.of(context).size.width,

              child: Image.network(widget.burger.urlAvatar),
            ),
          ],
        ),
      ),
    );
  }
}
