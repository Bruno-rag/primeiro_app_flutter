import 'package:flutter/cupertino.dart';
import 'package:primeiro_app_flutter/modelo/item.model.dart';

class Control{

 final List<Item>? itens;
 final Item? item;

 const Control({
  this.itens,
  this.item,
 });

 itemRemove(int index){
  itens!.remove(itens![index]);
 }
 itemAdd(Item item,int index){
  itens!.add(itens![index]);
 }

}