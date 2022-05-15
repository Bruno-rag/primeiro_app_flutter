import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/appBar.page.dart';
import 'package:primeiro_app_flutter/pages/AcessoApp/recupera.page.dart';
import 'package:primeiro_app_flutter/pages/AcessoApp/cadastro.page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          right: 40,
          left: 40,
        ),
        child: ListView(
          children: <Widget> [
            //Importando imagem
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/burger.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            //TextField E-mail
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //TextField senha
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //Button Recuperar senha
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(

                onPressed: (){
                  Navigator.of(context).push<int>(MaterialPageRoute(builder: (_) => RecuperarPage(),));
                },
                child: Text(
                  "Recuperar senha",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            //button confirmar
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurpleAccent,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push<int>(
                      MaterialPageRoute(
                          builder: (_)=> SimpleAppBarPage(),
                      ),
                  );
                },
                child: Text(
                    "Confimar",
                    style: TextStyle(
                      color: Colors.white
                    ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //Cadastro
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push<int>(
                      MaterialPageRoute(builder: (_) => CadastroPage(),)
                  );
                },
                child: Text(
                  "Ainda não tem conta? Click aqui.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
