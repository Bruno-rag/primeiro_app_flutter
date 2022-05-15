import 'package:flutter/material.dart';

class NovoEnderecoPage extends StatefulWidget {
  const NovoEnderecoPage({Key? key}) : super(key: key);

  @override
  State<NovoEnderecoPage> createState() => _NovoEnderecoPageState();
}

class _NovoEnderecoPageState extends State<NovoEnderecoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Endereço novo"
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
