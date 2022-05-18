import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Home/home.page.dart';
import 'package:primeiro_app_flutter/pages/chat.page.dart';
import 'package:primeiro_app_flutter/pages/perfil.page.dart';
import 'package:primeiro_app_flutter/pages/Carrinho/carrinho.page.dart';

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
        //centerTitle: true,
       /* leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),*/
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
          /*IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )*/
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
            Tab(icon: Icon(Icons.face), text: 'Perfil'),
            //Tab(icon: Icon(Icons.add_shopping_cart), text: 'Carrinho'),
            Tab(icon: Icon(Icons.chat_bubble), text: 'Chat'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: <Widget> [
          HomePage(),
          PerfilPage(),
         // CarrinhoPage(),
          ChatPage(),
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