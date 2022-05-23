import 'package:flutter/material.dart';

class DebitoPage extends StatefulWidget {
  const DebitoPage({Key? key}) : super(key: key);

  @override
  State<DebitoPage> createState() => _DebitoPageState();
}

class _DebitoPageState extends State<DebitoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Débito",
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
