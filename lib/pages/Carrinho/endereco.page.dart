
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/novoEndereco.page.dart';

class EnderecoPage extends StatefulWidget {
  const EnderecoPage({Key? key}) : super(key: key);

  @override
  State<EnderecoPage> createState() => _EnderecoPageState();
}

class _EnderecoPageState extends State<EnderecoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Endereço",
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
        color: Colors.white10,
        child: Column(
          children: [
            Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Nome Completo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Fone",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Rua,bairro,número",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Cidade,estado,CEP",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Botão adiciona novo endereço
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Adicionar novo endereço",
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
                          Icons.add,
                          color: Colors.black
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push<int>(
                      MaterialPageRoute(
                        builder: (_)=> NovoEnderecoPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
