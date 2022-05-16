
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/modelo/Hamburger.model.dart';
import 'package:primeiro_app_flutter/pages/Home/descricao.page.dart';

class HamburgerCasa extends StatefulWidget {
  const HamburgerCasa({Key? key}) : super(key: key);

  @override
  State<HamburgerCasa> createState() => _HamburgerCasaState();
}

class _HamburgerCasaState extends State<HamburgerCasa> {
  final urlBurger = "https://media.istockphoto.com/photos/burger-isolated-on-white-picture-id840902892?b=1&k=20&m=840902892&s=170667a&w=0&h=ld3yD9lC4wQnHEpk7SsQlUZp4XkqVUAc5DPJsLRLsi4=";
  List<Burger> burger= [
    const Burger(nome: "X-tudo",
        preco: 14.00,
        urlAvatar: "https://c.pxhere.com/photos/13/fa/beef_bread_bun_burger_cheese_cheeseburger_close_up_delicious-1556149.jpg!d"
    ),
    const Burger(nome: "Duplo bacon",
        preco: 16.00,
        urlAvatar: "https://c.pxhere.com/photos/13/fa/beef_bread_bun_burger_cheese_cheeseburger_close_up_delicious-1556149.jpg!d"
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Hamburger da casa"
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
      body: ListView.builder(
        itemCount: burger.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(burger[index].urlAvatar),
            ),
            title: Text(burger[index].nome,),
            subtitle: Text("R\$ "+burger[index].preco.toStringAsFixed(2),),
            trailing: const Icon(Icons.arrow_forward),

            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DescricaoPage(burger: burger[index])
              ));
            },
          ),
        ),
       // padding: EdgeInsets.all(30),
        
          //Item
          /*Container(
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0,0.75)

                )
              ],
              gradient: LinearGradient(
                colors: [Colors.indigoAccent, Colors.deepPurple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //image do humgurger
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),

                    image:  DecorationImage(
                        image: NetworkImage("https://c.pxhere.com/photos/13/fa/beef_bread_bun_burger_cheese_cheeseburger_close_up_delicious-1556149.jpg!d"),
                        fit: BoxFit.cover,

                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Nome Do Hamburger",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Descrição do item",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "R\$ 99,99",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),*/
          
       
      ),
    );
  }
}
