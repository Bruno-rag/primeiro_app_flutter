import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:primeiro_app_flutter/modelo/item.model.dart';
import 'package:primeiro_app_flutter/modelo/ingrediente.model.dart';

import '../modelo/endereco.model.dart';
import '../modelo/pedido.model.dart';


class Repository extends ChangeNotifier{

 List<Item> _listaItem = [];
 List<Item> _listaBurger = [];
 List<Endereco> _listaEndereco = [];
 List<Pedido> _listPedido = [];
 late Pedido pedidotemp;
 List<Ingrediente> _listIngre = [
   Ingrediente(nome: "Carne", preco: 9,),
   Ingrediente(nome: "Queijo", preco: 4,),
   Ingrediente(nome: "Molho", preco: 4,),
   Ingrediente(nome: "Bacon", preco: 4,),
  Ingrediente(nome: "Cebola", preco: 4,),
 ];

 UnmodifiableListView<Item> get listaItem => UnmodifiableListView(_listaItem);
 UnmodifiableListView<Ingrediente> get listaIngre => UnmodifiableListView(_listIngre);
 UnmodifiableListView<Item> get listaBurger => UnmodifiableListView(_listaBurger);
 UnmodifiableListView<Endereco> get listaEndereco => UnmodifiableListView(_listaEndereco);
 UnmodifiableListView<Pedido> get listaPedido => UnmodifiableListView(_listPedido);

 itemRemove(int index){
  _listaItem.remove(_listaItem[index]);
  notifyListeners();
 }
 itemAdd(Item item){
  _listaItem.add(item);
  notifyListeners();
 }
 addBurger(Item item){
  _listaBurger.add(item);
  notifyListeners();
 }
 removeBurger(int index){
  _listaBurger.remove(_listaBurger[index]);
  notifyListeners();
 }

 addEndereco(Endereco endereco){
  _listaEndereco.add(endereco);
  notifyListeners();
 }
 removeEndereco(int index){
  _listaEndereco.remove(_listaEndereco[index]);
  notifyListeners();
 }

 double valorTotal(){
  double valor = 0;
  for(int i =0; i < _listaItem.length;i++){
    valor += _listaItem[i].preco;
  }
  notifyListeners();
  return valor;
 }

 maisIngredinte(int index){
  if(_listIngre[index].quantidade! < 3){
   _listIngre[index].quantidade = _listIngre[index].quantidade! + 1;
  }
  notifyListeners();
 }
 menosIngredinte(int index){
  if(_listIngre[index].quantidade! > 0  )
   _listIngre[index].quantidade = _listIngre[index].quantidade! - 1;

  notifyListeners();
 }

 double valorIngre(int index){
  double valor =0;
  valor =  _listIngre[index].preco! * _listIngre[index].quantidade!;
  return valor;
 }

 double valorTotalIngre(){
  double valor =0;
  for(int i =0; i < _listIngre.length; i++)
   valor = valor + (_listIngre[i].preco! * _listIngre[i].quantidade!);
  return valor;
 }

 String criarDescricao(){
  String descricao = "";
  descricao = _listIngre[0].nome!+", "+_listIngre[1].nome!+", "+_listIngre[2].nome!;
  return descricao;
 }

}