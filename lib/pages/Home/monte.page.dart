import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Home/criaHamburger.page.dart';

class MontePage extends StatefulWidget {
  const MontePage({Key? key}) : super(key: key);

  @override
  State<MontePage> createState() => _MontePageState();
}

class _MontePageState extends State<MontePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
            "Lista de Hamburgers"
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
                        "Criar novo hamburger",
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
                        builder: (_)=> CriaHamburgerPage(),
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
