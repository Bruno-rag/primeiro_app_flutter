
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../modelo/cartao.model.dart';
import '../../modelo/endereco.model.dart';
import '../../repository/Repository.control.dart';

class InfoPedidoPage extends StatefulWidget {
  final Endereco? endereco;
  final Cartao? cartao;
  const InfoPedidoPage({Key? key,this.endereco,this.cartao}) : super(key: key);

  @override
  State<InfoPedidoPage> createState() => _InfoPedidoPageState();

}

class _InfoPedidoPageState extends State<InfoPedidoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Informação do pedido",
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
            Container(height: 20,),
            Expanded(
              child: Consumer<Repository>(
                  builder: (context, value, child) {
                    return value.listaPedido.isEmpty ? Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Lista vazia",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                        :ListView.builder(
                        padding: EdgeInsets.all(20),
                        itemCount: value.listaPedido.length,
                        itemBuilder: (context, index) => Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 40,
                              //backgroundImage: NetworkImage(value.listaItem[index].urlAvatar),
                            ),
                            title: Text(value.listaPedido[index].endereco!.estado!),
                            subtitle: Text(value.listaPedido[index].cartao!.numCartao),

                          ),
                        )
                    );
                  }),
            ),

          ],
        ),
      ),
    );
  }
}
