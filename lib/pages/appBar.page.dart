import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Home/home.page.dart';
import 'package:primeiro_app_flutter/pages/perfil.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/carrinho.page.dart';
import 'package:primeiro_app_flutter/pages/Home/monte.page.dart';

class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}
class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Hamburgueria'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            iconSize: 25,
            onPressed: () {
              Navigator.of(context).push<int>(MaterialPageRoute(
                builder: (_) => CarrinhoPage(),
              ),);
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigoAccent, Colors.deepPurpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        bottom: TabBar(
          //isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.star), text: 'Criar'),
            Tab(icon: Icon(Icons.face), text: 'Perfil'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: <Widget> [
          HomePage(),
          MontePage(),
          PerfilPage(),

        ],
      ),
    ),
  );

  Widget buildPage(String text, {body, child}) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}