
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  final item = ["Gênero","Masculino","Feminino"];
  String? value = "Gênero";

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontWeight: FontWeight.normal,
          fontSize: 20,
          color: Colors.black38,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 60,
          right: 60,
        ),

        child: ListView(
          children: [
            //Titulo
            Text(
              "Cadastro",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),

            ),
            SizedBox(
              height: 30,
            ),
            //Nome
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: "Nome",
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            //Data
            TextField(
              autofocus: false,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Data de nascimento",
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            //Gênero
            Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                    color: Colors.black38,
                    width: 1,
                ),
              ),
              child: DropdownButton<String>(
                value: value,
                items: item.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
                isExpanded: true,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            //Email
            TextField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            //Senha
            TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            //Confirmir senha
            TextField(
              autofocus: true,
              // keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confimar Senha",
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            //CPF
            TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "CPF",
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            //Telefone
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: "Telefone",
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10.0),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            //Botão de confirmar
            Container(
              height: 45,
              color: Colors.deepPurple,
              child: TextButton(
                onPressed: (){},
                child: Text(
                  "Concluir",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),

              ),
            ),
          ],
        ),
      ),

    );

  }

}

